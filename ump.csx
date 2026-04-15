using System.Threading;
using System.Threading.Tasks;
using System.Reflection;
using System.Linq;
using System.Globalization;
using System.Security.Cryptography;

EnsureDataLoaded();

GlobalDecompileContext UMP_DECOMPILE_CONTEXT = new(Data);
Underanalyzer.Decompiler.IDecompileSettings decompileSettings = new Underanalyzer.Decompiler.DecompileSettings()
{
    UnknownArgumentNamePattern = "arg{0}",
    RemoveSingleLineBlockBraces = true,
    EmptyLineAroundBranchStatements = true,
    EmptyLineBeforeSwitchCases = true
};

/// <summary>
/// Wrapper for the IScriptInterface methods
/// </summary>
UMPWrapper UMP_WRAPPER = new UMPWrapper
(
    Data,
    ScriptPath,
    FilePath,
    (string name) => GetDisassemblyText(name),
    UMP_DECOMPILE_CONTEXT,
    decompileSettings
);

/// <summary>
/// Base class for the GameMaker files (and disassembly files) loaders
/// </summary>
abstract class UMPLoader
{
    /// <summary>
    /// The path to the folder containing the code files, relative to the directory the main script lies in
    /// </summary>
    public abstract string CodePath { get; }

    /// <summary>
    /// Whether the scripts should be imported as global scripts (for GMS 2.3 and higher) or not (lower than GMS 2.3)
    /// </summary>
    public abstract bool UseGlobalScripts { get; }

    /// <summary>
    /// A list of all the defined symbols, if any
    /// </summary>
    public virtual string[] Symbols { get; } = null;

    public virtual bool UseDecompileCache { get; } = false;

    public UMPDecompiler HelperDecompiler;

    /// <summary>
    /// A function that takes a path (relative to the main script folder) to a code file and returns the names of the code entries that should be imported from it as an array
    /// </summary>
    /// <param name="filePath">Path to the file, relative to the directory where the main script is</param>
    /// <returns>An array with all the code entries</returns>
    public abstract string[] GetCodeNames (string filePath);

    public virtual bool AcceptFile(string filePath)
    {
        return true;
    }
    
    // TO-DO: implement cache
    public virtual bool EnableCache { get; } = false;

    /// <summary>
    /// The IScriptInterface wrapper that is being used
    /// </summary>
    public UMPWrapper Wrapper { get; set; }

    /// <summary>
    /// Creates a new UMPLoader
    /// </summary>
    /// <param name="wrapper">Should be UMP_WRAPPER</param>
    public UMPLoader (UMPWrapper wrapper)
    {
        Wrapper = wrapper;
        HelperDecompiler = new UMPDecompiler(Wrapper, UseDecompileCache);
    }

    /// <summary>
    /// Returns a dictionary with all the enums defined in the loader
    /// </summary>
    /// <returns>
    /// A dictionary with the vakues. It takes the form of two dictionaries nested dictionaries: string -> string -> int, where the first string is the name of the enum, the second string is the name of the enum value and the int is the value of the enum
    /// </returns>
    public Dictionary<string, Dictionary<string, int>> GetEnums ()
    {
        Dictionary<string, Dictionary<string, int>> enumValues = new();
        // going until UMPLoader is equivalent to getting all user defined classes
        for (Type classType = this.GetType(); classType != typeof(UMPLoader); classType = classType.BaseType)
        {
            foreach (Type nestedType in classType.GetNestedTypes())
            {
                if (nestedType.IsEnum)
                {
                    Dictionary<string, int> values = Enum.GetNames(nestedType).ToDictionary(name => name, name => (int)Enum.Parse(nestedType, name));
                    enumValues[nestedType.Name] = values;
                }
            }
        }

        return enumValues;
    }
    
    /// <summary>
    /// Loads all the code files with all the defined settings for the class
    /// </summary>
    /// <exception cref="UMPException">If an error using the UMP features occurs</exception>
    /// <exception cref="Exception"></exception>
    public void Load ()
    {
        string absoluteCodePath = "";
        try
        {
            absoluteCodePath = Path.Combine(Path.GetDirectoryName(Wrapper.ScriptPath), CodePath);
        }
        catch
        {
            throw new UMPException("Error getting code path");
        }

        string[] files = null;
        string[] searchPatterns = new[] { "*.gml", "*.asm" };
        if (Directory.Exists(absoluteCodePath))
        {
            files = searchPatterns.SelectMany(pattern => Directory.GetFiles(absoluteCodePath, pattern, SearchOption.AllDirectories)).ToArray();
        }
        else
        {
            throw new UMPException("Error getting code files");
        }

        Dictionary<string, string> processedFiles = new();

        // preprocessing code (everything using #)
        foreach (string file in files)
        {
            string relativePath = Path.GetRelativePath(absoluteCodePath, file);
            if (!AcceptFile(relativePath))
            {
                continue;
            }
            string code = File.ReadAllText(file);
            // ignoring files
            if (ShouldIgnoreFile(code, file))
            {
                continue;
            }

            UMPLoader.CodeProcessor processor = new(code, this);
            string processedCode;
            try
            {
                processedCode = processor.Preprocess();
            }
            catch (Exception ex)
            {
                throw new UMPException($"Error processing file {file}, {ex.Message}\n{ex.StackTrace}");
            }

            processedFiles[relativePath] = processedCode;
        }

        List<UMPFunctionEntry> functions = new();
        List<UMPCodeEntry> imports = new();
        List<UMPCodeEntry> patches = new();

        // post processing
        foreach (string file in processedFiles.Keys)
        {
            string code = processedFiles[file];
            // "opening" function files
            if (code.StartsWith("/// FUNCTIONS"))
            {    
                FunctionsFileParser parser = new(code, file, functions, UseGlobalScripts, Wrapper);
                parser.Parse();
            }
            else if (Regex.IsMatch(code, @"^/// (IMPORT|PATCH)"))
            {
                string[] codeEntries = GetCodeNames(file);
                bool isASM = file.EndsWith(".asm");

                for (int i = 0; i < codeEntries.Length; i++)
                {
                    if (UseGlobalScripts)
                    {
                        codeEntries[i] = codeEntries[i].Replace("gml_Script", "gml_GlobalScript");
                    }
                    else
                    {
                        codeEntries[i] = codeEntries[i].Replace("gml_GlobalScript", "gml_Script");
                    }

                }

                foreach (string codeName in codeEntries)
                {
                    UMPCodeEntry codeEntry = new UMPCodeEntry(codeName, code, isASM, Wrapper);
                    if (code.StartsWith("/// PATCH"))
                    {
                        patches.Add(codeEntry);
                    }
                    else
                    {
                        if (codeName.Contains("gml_GlobalScript") || codeName.Contains("gml_Script"))
                        {
                            string functionName = Regex.Match(codeName, @"(?<=(gml_Script_|gml_GlobalScript_))[_\d\w]+").Value;

                            functions.Add(new UMPFunctionEntry(codeName, code, functionName, isASM, Wrapper));
                        }
                        else
                        {
                            // loader only supports scripts and objects... if not script, then it's an object
                            string objName = GetObjectName(codeName);
                            if (objName != "" && Wrapper.Data.GameObjects.ByName(objName) == null)
                            {
                                CreateGameObject(objName);
                            }
                            imports.Add(codeEntry);
                        }
                    }
                }
            }
            else
            {
                throw new UMPException($"File \"{file}\" does not have a valid UMP type");
            }
        }

        // order functions so that they never call functions not yet defined
        List<UMPFunctionEntry> functionsInOrder = new();

        while (functionsInOrder.Count < functions.Count)
        {   
            // go through each function, check if it's never mentiond in all functions that are already not in functionsInOrder 
            foreach (UMPFunctionEntry testFunction in functions)
            {
                if (functionsInOrder.Contains(testFunction)) continue;
                bool isSafe = true;
                foreach (UMPFunctionEntry otherFunction in functions)
                {
                    if (!functionsInOrder.Contains(otherFunction) && !otherFunction.Equals(testFunction))
                    {
                        if (Regex.IsMatch(testFunction.Code, @$"\b{otherFunction.FunctionName}\b"))
                        {
                            isSafe = false;
                            break;
                        }
                    }
                }
                if (isSafe)
                {
                    functionsInOrder.Add(testFunction);
                }
            }
        }

        foreach (UMPFunctionEntry entry in functionsInOrder)
        {
            if (UseGlobalScripts)
            {
                entry.Import();
            }
            else
            {
                string functionBody = Regex.Match(entry.Code, @"(?<=^[\S\s]*?function[\s\d\w_]+\(.*?\)\s*{)[\s\S]+(?=}\s*$)").Value;
                // if the script was defined without "function"
                if (functionBody == "")
                {
                    functionBody = entry.Code;
                }
                string scriptName = entry.FunctionName;
                string codeName = entry.Name.Replace("gml_GlobalScript", "gml_Script");
                UndertaleModLib.Compiler.CodeImportGroup localImportGroup = new(Wrapper.Data);
                localImportGroup.QueueReplace(codeName, functionBody);
                localImportGroup.Import();
            }
        }

        foreach (UMPCodeEntry entry in imports)
        {
            entry.Import();
        }

        // use this dictionary to group all patches together
        // so that we can apply all the patches only decompiling the code once
        Dictionary<string, UMPPatchFile> patchFiles = new();

        foreach (UMPCodeEntry entry in patches)
        {
            UMPPatchFile patch = new(entry.Code, entry.Name, entry.IsASM, Wrapper, HelperDecompiler);
            // differentiating ASM and GML by a "file name" property
            // what this means is that ASM and GML patches will be placed separatedly
            // this means it will break if there is GML patch that requires compilation because the ASM one will
            // possibly have changed it
            // at the same time, there should be no reson for a GML patch to require compilation if there is an ASM patch
            // because resorting to ASM usually means that the compiler is causing issues
            if (patchFiles.ContainsKey(entry.FileName))
            {
                patchFiles[entry.FileName].Merge(patch);
            }
            else
            {
                patchFiles[entry.FileName] = patch;
            }
        }

        foreach (KeyValuePair<string, UMPPatchFile> entry in patchFiles)
        {
            UMPPatchFile patch = entry.Value;
            if (patch.RequiresCompilation)
            {
                patch.AddCode();

                foreach (UMPPatchCommand command in patch.DecompileCommands)
                {
                    if (command is UMPAfterCommand)
                    {
                        int startIndex = command.FindIndexOf(patch);
                        int placeIndex = startIndex + command.OriginalCode.Length;
                        patch.Code = patch.Code.Insert(placeIndex, "\n" + command.NewCode + "\n");
                    }
                    else if (command is UMPBeforeCommand)
                    {
                        int placeIndex = command.FindIndexOf(patch);
                        patch.Code = patch.Code.Insert(placeIndex, "\n" + command.NewCode + "\n");
                    }
                    else if (command is UMPReplaceCommand)
                    {
                        if (command.OriginalCode == "")
                        {
                            throw new UMPException($"Error in patch ({patch.CodeEntry}) file: Replace command requires code to be specified (empty string found)");
                        }
                        // side effect running to see if there will be an error, the index won't be used per say
                        command.FindIndexOf(patch);
                        patch.Code = patch.Code.Replace(command.OriginalCode, command.NewCode);
                    }
                    else if (command is UMPAppendCommand)
                    {
                        // Note: can only be in ASM
                        patch.Code = patch.Code + "\n" + command.NewCode;
                    }
                    else if (command is UMPPrependCommand)
                    {
                        patch.Code = command.NewCode + "\n" + patch.Code;
                    }
                    else
                    {
                        throw new Exception("Unknown command type: " + command.GetType().Name);
                    }
                }


                try
                {
                    UndertaleModLib.Compiler.CodeImportGroup localImportGroup = new(Wrapper.Data);
                    localImportGroup.QueueReplace(patch.CodeEntry, patch.Code);
                    localImportGroup.Import();
                }
                catch
                {
                    throw new UMPException($"Error patching code entry \"{patch.CodeEntry}\". There is likely wrong GML syntax:\n{patch.Code}");
                }

            }

            // Do it later because these do not depend on the internal code of the code entry
            foreach (UMPPatchCommand command in patch.NonDecompileCommands)
            {
                if (command is UMPAppendCommand)
                {
                    UndertaleModLib.Compiler.CodeImportGroup localImportGroup = new(Wrapper.Data);
                    localImportGroup.QueueAppend(patch.CodeEntry, command.NewCode);
                    localImportGroup.Import();
                }
            }
        }
    }

    /// <summary>
    /// Whether the file should be ignored or not, based on its code
    /// </summary>
    /// <param name="code">Code of the file</param>
    /// <param name="file">File path, for debugging only</param>
    /// <returns>True if it should be ignored</returns>
    /// <exception cref="UMPException">If the ignore statement is malformed</exception>
    public bool ShouldIgnoreFile (string code, string file)
    {
        if (!Regex.IsMatch(code, @"^///.*?\.ignore"))
        {
            return false;
        }

        string ifPattern = @"(?<=^///.*?\.ignore\s+if\s+).*(?=\n)";
        var matchPattern = Regex.Match(code, ifPattern);

        if (!matchPattern.Success)
        {
            throw new UMPException($"Invalid \"ignore\" statement in file: {file}");
        }

        string condition = matchPattern.Value;

        SymbolConditionParser parser = new(condition, Symbols);

        return parser.Parse();
    }

    /// <summary>
    /// Class which handles a symbol boolean expression (eg. "!DEBUG || !OLD"), and given the symbols, parses it to find its boolean value
    /// </summary>
    public class SymbolConditionParser
    {
        private readonly string _expression;
        private int _position;
        private string[] _symbols;

        public SymbolConditionParser(string expression, string[] symbols)
        {
            // full trimming
            _expression = expression.Replace(" ", "").Trim();;
            _symbols = symbols;
            _position = 0;
        }

        public bool Parse()
        {
            // start parsing from the highest precedence
            bool result = ParseOr();
            if (_position < _expression.Length)
            {
                throw new UMPException($"Unexpected character at position {_position}: {_expression[_position]}");
            }

            return result;
        }

        private bool ParseOr()
        {
            bool left = ParseAnd();
            while (Match("||"))
            {
                bool right = ParseAnd();
                left = left || right;
            }
            return left;
        }

        private bool ParseAnd()
        {
            bool left = ParseUnary();
            while (Match("&&"))
            {
                bool right = ParseUnary();
                left = left && right;
            }
            return left;
        }

        private bool ParseUnary()
        {
            if (Match("!"))
            {
                return !ParseUnary();
            }
            return ParsePrimary();
        }

        private bool ParsePrimary()
        {
            if (Match("("))
            {
                bool result = ParseOr();
                if (!Match(")"))
                {
                    throw new UMPException($"Expected closing parenthesis at position {_position}");
                }
                return result;
            }

            var symbol = ParseSymbol();
            return _symbols.Contains(symbol);
        }

        private string ParseSymbol()
        {
            var exprSubstring = _expression.Substring(_position);
            var symbolMatch = Regex.Match(exprSubstring, @"^[\w\d_]+");
            if (symbolMatch.Success)
            {
                _position += symbolMatch.Value.Length;
                return symbolMatch.Value;
            }
            else
            {
                throw new UMPException("Unknown symbol in expression " + exprSubstring);
            }
        }

        private bool Match(string token)
        {
            if (_expression.Substring(_position).StartsWith(token))
            {
                _position += token.Length;
                return true;
            }
            return false;
        }
    }

    /// <summary>
    /// Process GML code with UMP options
    /// </summary>
    public class CodeProcessor
    {
        /// <summary>
        /// Code before processing
        /// </summary>
        public string Code { get; set; }

        /// <summary>
        /// The UMPLoader that is being used for the options
        /// </summary>
        public UMPLoader Loader { get; set; }

        /// <summary>
        /// All the enums defined in the loader
        /// </summary>
        public Dictionary<string, Dictionary<string ,int>> Enums { get; set; }

        /// <summary>
        /// All the symbols defined in the loader
        /// </summary>
        public string[] Symbols { get; set; }

        /// <summary>
        /// Current index in the code
        /// </summary>
        public int Index { get; set; }

        /// <summary>
        /// Skip an amount of characters
        /// </summary>
        /// <param name="amount"></param>
        public void Skip (int amount = 1)
        {
            Index += amount;
        }

        /// <summary>
        /// Skip an amount of characters, adding them to the processed code
        /// </summary>
        /// <param name="amount"></param>
        public void Advance (int amount = 1)
        {
            int i = 0;
            while (Inbounds && i < amount)
            {
                ProcessedCode += CurrentChar;
                Index++;
                i++;
            }
        }

        /// <summary>
        /// Current character in the code
        /// </summary>
        public char CurrentChar => Code[Index];

        /// <summary>
        /// Skip current string and add it to the processed code
        /// </summary>
        public void AddString ()
        {
            Advance();
            while (Inbounds && CurrentChar != '"')
            {
                if (CurrentChar == '\\')
                {
                    Advance();
                }
                Advance();
            }
            if (!Inbounds)
            {
                ThrowStringException();
            }
            Advance();
        }

        /// <summary>
        /// Skip current string
        /// </summary>
        public string SkipString ()
        {
            int start = Index;
            Skip();
            while (CurrentChar != '"')
            {
                if (CurrentChar == '\\')
                {
                    Skip();
                }
                Skip();
            }
            if (!Inbounds)
            {
                ThrowStringException();   
            }
            Skip();
            return Code.Substring(start + 1, Index - start - 2);
        }

        /// <summary>
        /// Throw an exception for an unclosed string
        /// </summary>
        /// <exception cref="UMPException"></exception>
        public void ThrowStringException ()
        {
            throw new UMPException("String not closed in code");
        }

        /// <summary>
        /// Whether the index is inbounds or not
        /// </summary>
        public bool Inbounds => Index < Code.Length;

        /// <summary>
        /// Skip a comment and add it to the processed code
        /// </summary>
        public void AddComment ()
        {
            Advance(2);
            while (Inbounds && CurrentChar != '\n')
            {
                Advance();
            }
            Advance();
        }

        /// <summary>
        /// Skip all of current whitespace
        /// </summary>
        public void SkipWhitespace ()
        {
            while (Inbounds && char.IsWhiteSpace(CurrentChar))
            {
                Skip();
            }
        }

        /// <summary>
        /// Skip the current line
        /// </summary>
        public void SkipLine ()
        {
            while (Inbounds && CurrentChar != '\n')
            {
                Skip();
            }
            Skip();
        }

        /// <summary>
        /// Skip the current line and returns what was left in it
        /// </summary>
        /// <returns></returns>
        public string SkipAndGetLineAhead ()
        {
            var content = "";
            while (Inbounds && CurrentChar != '\n')
            {
                content += CurrentChar;
                Skip();
            }
            Skip();
            return content;
        }

        /// <summary>
        /// Skip the upcoming word and return it
        /// </summary>
        /// <returns></returns>
        public string SkipWordAhead ()
        {
            string word = "";
            while (Inbounds && char.IsLetterOrDigit(CurrentChar) || CurrentChar == '_')
            {
                word += CurrentChar;
                Skip();
            }
            return word;
        }

        /// <summary>
        /// The output code from processing
        /// </summary>
        public string ProcessedCode { get; set; }

        /// <summary>
        /// Process the condition of an #if block
        /// </summary>
        /// <exception cref="UMPException"></exception>
        public void ProcessIfBlock ()
        {
            SkipWhitespace();
            string condition = SkipAndGetLineAhead();
            SymbolConditionParser parser = new(condition, Symbols);
            bool result = parser.Parse();
            State = result ? ParseState.AddBlock : ParseState.SkipBlock;
        }

        /// <summary>
        /// Skip the upcoming word while adding it to the processed code and return it
        /// </summary>
        /// <returns></returns>
        public string ReadWordAhead ()
        {
            int i = Index;
            string word = "";
            while (Inbounds && (char.IsLetterOrDigit(CurrentChar) || CurrentChar == '_'))
            {
                word += CurrentChar;
                Skip();
            }
            Index = i;
            return word;
        }

        /// <summary>
        /// Process code for a UMP enum
        /// </summary>
        /// <param name="enumName"></param>
        /// <exception cref="UMPException"></exception>
        public void ProcessEnum (string enumName)
        {
            if (!Enums.ContainsKey(enumName))
            {
                throw new UMPException($"Enum \"{enumName}\" not found");
            }
            string word;
            // accessing enum property
            if (CurrentChar == '#')
            {
                Skip();
                word = ReadWordAhead();
                if (word == "length")
                {
                    ProcessedCode += Enums[enumName].Count.ToString();
                }
                else
                {
                    throw new UMPException("Invalid UMP enum property in code");
                }
            }
            else
            {
                word = ReadWordAhead();
                if (Enums[enumName].ContainsKey(word))
                {
                    ProcessedCode += Enums[enumName][word].ToString();
                }
                else
                {
                    throw new UMPException($"Enum value \"{word}\" not found in enum \"{enumName}\"");
                }
            }
            Skip(word.Length);
        }

        public string GetGMLArgument ()
        {
            string arg = "";
            Skip("@@".Length);
            while (Inbounds && Code.Substring(Index, 2) != "$$")
            {
                if (CurrentChar == '"')
                {
                    arg += SkipString();
                }
                else if (Code.Substring(Index, 2) == "//")
                {
                    SkipLine();
                }
                else
                {
                    arg += CurrentChar;
                    Skip();
                }
            }
            if (!Inbounds)
            {
                throw new UMPException("GML argument not closed in code");
            }

            Skip("$$".Length);
            return arg;
        }

        /// <summary>
        /// Process code for a UMP method
        /// </summary>
        /// <param name="method"></param>
        /// <exception cref="UMPException"></exception>
        public void ProcessMethod (string method)
        {
            List<object> methodArgs = new();
            while (Inbounds && CurrentChar != ')')
            {
                bool addedArg = false;
                if (CurrentChar == '"')
                {
                    methodArgs.Add(SkipString());
                    addedArg = true;
                }
                else if (Code.Substring(Index, 2) == "@@")
                {
                    methodArgs.Add(GetGMLArgument());
                    addedArg = true;
                }
                else if (char.IsDigit(CurrentChar))
                {
                    string mainDigits = "";
                    string decimalDigits = "";
                    while (Inbounds && char.IsDigit(CurrentChar))
                    {
                        mainDigits += CurrentChar;
                        Skip();
                    }
                    if (!Inbounds)
                    {
                        throw new UMPException("UMP Method not closed in code");
                    }
                    if (CurrentChar == '.')
                    {
                        Skip();
                        decimalDigits = "";
                        while (Inbounds && char.IsDigit(CurrentChar))
                        {
                            decimalDigits += CurrentChar;
                            Skip();
                        }
                        if (!Inbounds)
                        {
                            throw new UMPException("UMP Method not closed in code");
                        }

                        methodArgs.Add(double.Parse(mainDigits + "." + decimalDigits, CultureInfo.InvariantCulture));
                        addedArg = true;
                    }
                    else
                    {
                        methodArgs.Add(int.Parse(mainDigits));
                        addedArg = true;
                    }
                }
                else
                {
                   throw new UMPException($"Invalid UMP method argument in code: {CurrentChar}");
                }
                if (addedArg)
                {
                    SkipWhitespace();
                    if (!Regex.IsMatch(CurrentChar.ToString(), @"[,\)]"))
                    {
                        throw new UMPException("Invalid UMP method argument in code");
                    }
                    else if (CurrentChar == ',')
                    {
                        Skip();
                        SkipWhitespace();
                    }
                }

            }
            if (CurrentChar != ')')
            {
                throw new UMPException("UMP Method not closed in code");
            }
            // closing parenthesis
            Skip();

            // add error if wrong arg count, types and etc
            MethodInfo methodInfo = Loader.GetType().GetMethod(method);
            if (methodInfo == null)
            {
                throw new UMPException($"UMP Method \"{method}\" not found");
            }
            else
            {
                try
                {
                    object result = methodInfo.Invoke(Loader, methodArgs.ToArray());
                    ProcessedCode += (string)result;
                }
                catch
                {
                    throw new UMPException($"UMP Method \"{method}\" failed");
                }
            }
        }

        /// <summary>
        /// State of the parser relative to the #if blocks
        /// </summary>
        public ParseState State { get; set; } = ParseState.Normal;

        /// <summary>
        /// Possible states of the parser
        /// </summary>
        public enum ParseState
        {
            /// <summary>
            /// Outside any #if block
            /// </summary>
            Normal,
            /// <summary>
            /// Inside a #if block that is being skipped (condition not met)
            /// </summary>
            SkipBlock,
            /// <summary>
            /// Inside a #if block that is being added (condition met)
            /// </summary>
            AddBlock,
            /// <summary>
            /// If inside a #if-else block and one of the conditions have already been met, then all else will be skipped
            /// </summary>
            FinishedBlock
        }


        /// <summary>
        /// If the parser is in a #if block that should be skipped
        /// </summary>
        public bool ShouldSkip => State == ParseState.SkipBlock || State == ParseState.FinishedBlock;

        /// <summary>
        /// Process the code
        /// </summary>
        /// <returns></returns>
        public string Preprocess ()
        {
            ProcessedCode = "";
            while (Inbounds)
            {
                switch (CurrentChar)
                {
                    case '"':
                    {
                        if (ShouldSkip)
                        {
                            SkipString();
                        }
                        else
                        {
                            AddString();
                        }
                        break;
                    }
                    case '/':
                    {
                        if (Code[Index + 1] == '/')
                        {
                            if (ShouldSkip)
                            {
                                SkipLine();
                            }
                            else
                            {
                                AddComment();
                            }
                        }
                        else
                        {
                            if (ShouldSkip)
                            {
                                Skip();
                            }
                            else
                            {
                                Advance();
                            }
                        }
                        break;
                    }
                    case '#':
                    {
                        Skip(1);
                        string word = ReadWordAhead();

                        if (State == ParseState.Normal && word == "if")
                        {
                            Skip(word.Length);
                            ProcessIfBlock();
                        }
                        else if (State != ParseState.Normal && Regex.IsMatch(word, @"(endif|elsif|else)"))
                        {
                            Skip(word.Length);
                            switch (word)
                            {
                                case "endif":
                                {
                                    SkipLine();
                                    State = ParseState.Normal;
                                    break;
                                }
                                case "elsif":
                                {
                                    if (State == ParseState.AddBlock)
                                    {
                                        State = ParseState.FinishedBlock;
                                    }
                                    else if (State == ParseState.FinishedBlock)
                                    {
                                        SkipLine();
                                    }
                                    else if (State == ParseState.SkipBlock)
                                    {
                                        ProcessIfBlock();
                                    }
                                    else
                                    {
                                        // this should never happen
                                        throw new UMPException($"Invalid elsif in code, current state: {State}");
                                    }
                                    break;
                                }
                                case "else":
                                {
                                    SkipLine();
                                    State = State == ParseState.SkipBlock ? ParseState.AddBlock : ParseState.FinishedBlock;
                                    break;
                                }
                            }
                        }
                        else if (!ShouldSkip)
                        {
                            char afterWord = Code[Index + word.Length];
                            // enums
                            if (afterWord == '.')
                            {
                                Skip(word.Length + 1);
                                ProcessEnum(word);
                            }
                            // user methods
                            else if (afterWord == '(')
                            {
                                Skip(word.Length + 1);
                                ProcessMethod(word);
                            }
                            else
                            {
                                throw new UMPException("Invalid '#' in code");
                            }
                        }
                        break;
                    }
                    default:
                    {
                        if (ShouldSkip)
                        {
                            Skip();
                        }
                        else
                        {
                            Advance();
                        }
                        break;
                    }
                }
            }

            return ProcessedCode;
        }

        /// <summary>
        /// Create processor for a code string with given options
        /// </summary>
        /// <param name="code"></param>
        /// <param name="loader"></param>
        public CodeProcessor (string code, UMPLoader loader)
        {
            Code = code;
            Loader = loader;
            Symbols = loader.Symbols;
            Enums = loader.GetEnums();
        }
    }

    /// <summary>
    /// Parses the code for the /// FUNCTIONS files
    /// </summary>
    public class FunctionsFileParser
    {
        /// <summary>
        /// Index in the code
        /// </summary>
        public int Index { get; set; }

        /// <summary>
        /// Code of the file
        /// </summary>
        public string Code { get; set; }

        /// <summary>
        /// File path, for debugging only
        /// </summary>
        public string File { get; set; }

        /// <summary>
        /// List of all the functions that will be added
        /// </summary>
        public List<UMPFunctionEntry> Functions { get; set; }

        /// <summary>
        /// Should be UMP_WRAPPER
        /// </summary>
        public UMPWrapper Wrapper { get; set; }

        /// <summary>
        /// Whether the functions should be imported as global scripts (for GMS 2.3 and higher) or not (lower than GMS 2.3)
        /// </summary>
        public bool UseGlobalScripts { get; set; }

        /// <summary>
        /// Create parser for given code and options
        /// </summary>
        /// <param name="code"></param>
        /// <param name="file"></param>
        /// <param name="functions"></param>
        /// <param name="useGlobalScripts"></param>
        /// <param name="wrapper"></param>
        public FunctionsFileParser (string code, string file, List<UMPFunctionEntry> functions, bool 
        useGlobalScripts, UMPWrapper wrapper)
        {
            Code = code;
            File = file;
            Functions = functions;
            Index = 0;
            UseGlobalScripts = useGlobalScripts;
            Wrapper = wrapper;
        }

        /// <summary>
        /// Current character in the code
        /// </summary>
        public char CurrentChar => Code[Index];

        /// <summary>
        /// Skip an amount of characters
        /// </summary>
        /// <param name="amount"></param>
        public void Advance (int amount = 1)
        {
            Index += amount;
        }

        /// <summary>
        /// Whether the index is inbounds or not
        /// </summary>
        public bool Inbounds => Index < Code.Length;

        /// <summary>
        /// Parse the code and add all the functions to the list
        /// </summary>
        /// <exception cref="UMPException"></exception>
        public void Parse ()
        {
            while (Index < Code.Length)
            {
                if (Code.Substring(Index).StartsWith("function"))
                {
                    Advance("function".Length);
                
                    int nameStart = Index;
                    while (Inbounds && CurrentChar != '(')
                    {
                        Advance();
                    }
                    if (!Inbounds)
                    {
                        throw new UMPException("Function keyword must be preceded by name and parenthesis, in file: " + File);
                    }
                    string functionName = Code.Substring(nameStart, Index - nameStart).Trim();
                    if (!Regex.IsMatch(functionName, @"[\w_][\d\w_]*"))
                    {
                        throw new UMPException("Function name must be a valid variable name, in file: " + File);
                    }

                    List<string> args = ExtractArguments();

                    string functionBody = ExtractFunctionBody();

                    string functionCode = UMPLoader.FunctionsFileParser.CreateFunctionCode(functionName, args, functionBody);

                    string entryName = UseGlobalScripts ? $"gml_GlobalScript_{functionName}" : $"gml_Script_{functionName}";
                    Functions.Add(new UMPFunctionEntry(entryName, functionCode, functionName, false, Wrapper));
                }
                Advance();
            }
        }
    
        /// <summary>
        /// Extract the arguments of the current function
        /// </summary>
        /// <returns></returns>
        /// <exception cref="UMPException"></exception>
        public List<string> ExtractArguments ()
        {
            List<string> args = new();
            int argStart = Index + 1;
            while (Inbounds)
            {
                bool endLoop = CurrentChar == ')';
                if (CurrentChar == ',' || endLoop)
                {
                    string argName = Code.Substring(argStart, Index - argStart).Trim();
                    if (argName != "")
                    {
                        args.Add(argName);
                    }
                    argStart = Index + 1;
                    if (endLoop)
                    {
                        break;
                    }
                }
                Advance();
            }
            if (!Inbounds)
            {
                throw new UMPException("Function arguments not closed, in file: " + File);
            }

            return args;
        }

        /// <summary>
        /// Extract the body of the current function
        /// </summary>
        /// <returns></returns>
        /// <exception cref="UMPException"></exception>
        public string ExtractFunctionBody ()
        {
            while (Inbounds && CurrentChar != '{')
            {
                Advance();
            }
            if (!Inbounds)
            {
                throw new UMPException("Function body not found, in file: " + File);
            }
            // we do want to skip the { (its added in something other function)
            int codeStart = Index + 1;
            int depth = 0;
            do
            {
                if (CurrentChar == '{')
                {
                    depth++;
                }
                else if (CurrentChar == '}')
                {
                    depth--;
                }
                Advance();
            }
            while (Inbounds && depth > 0);
            if (depth > 0)
            {
                throw new UMPException("Function body not closed, in file: " + File);
            }
            // - 1 at the end to remove the last }
            return Code.Substring(codeStart, Index - codeStart - 1);
        }

        /// <summary>
        /// Create the code for a function's script
        /// </summary>
        /// <param name="functionName"></param>
        /// <param name="args"></param>
        /// <param name="functionBody"></param>
        /// <returns></returns>
        public static string CreateFunctionCode (string functionName, List<string> args, string functionBody)
        {
            List<string> gmlArgs = new();
            // initializing args, unless they are argumentN in gamemaker because those already work normally
            for (int j = 0; j < args.Count; j++)
            {
                gmlArgs.Add("argument" + j);
                string arg = args[j];
                if (arg.StartsWith("argument"))
                {
                    continue;
                }
                else
                {
                    functionBody = $"var {arg} = argument{j};" + functionBody;
                }
            }
            return $"function {functionName}({string.Join(", ", gmlArgs)}) {{ {functionBody} }}";
        }
    }
    
    /// <summary>
    /// Get the name of the object from its entry name
    /// </summary>
    /// <param name="entryName"></param>
    /// <returns></returns>
    public string GetObjectName (string entryName)
    {
        return Regex.Match(entryName, @"(?<=gml_Object_).*?((?=(_[a-zA-Z]+_\d+))|(?=_Collision))").Value;
    }

    /// <summary>
    /// Create a new game object with the given name
    /// </summary>
    /// <param name="objectName"></param>
    /// <returns></returns>
    public UndertaleGameObject CreateGameObject (string objectName)
    {
        var obj = new UndertaleGameObject();
        obj.Name = Wrapper.Data.Strings.MakeString(objectName);
        Wrapper.Data.GameObjects.Add(obj);

        return obj;
    }

    /// <summary>
    /// Add GML code to the end of a code entry
    /// </summary>
    /// <param name="codeName"></param>
    /// <param name="code"></param>
    public void AppendGML (string codeName, string code)
    {
        try
        {
            UndertaleModLib.Compiler.CodeImportGroup localImportGroup = new(Wrapper.Data);
            localImportGroup.QueueAppend(codeName, code);
            localImportGroup.Import();
        }
        catch
        {
            throw new UMPException($"Error appending in file (Likely code doesn't exist) {codeName}");
        }
    }
}

/// <summary>
/// Represents a command in a UMP patch file
/// </summary>
abstract class UMPPatchCommand
{
    /// <summary>
    /// Name of the command for debugging purposes
    /// </summary>
    public abstract string Command { get; }

    /// <summary>
    /// Whether the command requires code from the original entry to be presented
    /// </summary>
    public abstract bool BasedOnText { get; }

    /// <summary>
    /// Whether the command requires the code to be decompiled and then recompiled to create the changes
    /// </summary>
    public abstract bool RequiresCompilation { get; }

    /// <summary>
    /// If is based on text, the original code required
    /// </summary>
    public string OriginalCode { get; set; }

    /// <summary>
    /// The new code to be added
    /// </summary>
    public string NewCode { get; set; }

    /// <summary>
    /// Whether the patch is for a disassembly text file or not
    /// </summary>
    public bool IsASM { get; set; }

    /// <summary>
    /// Find the index that the "original code" of the command is found in a patch
    /// </summary>
    /// <param name="patch">Patch with the code entry to change</param>
    /// <returns>The index where the original code starts</returns>
    /// <exception cref="UMPException">An error, if could not find the original code in the entry</exception>
    public int FindIndexOf(UMPPatchFile patch)
    {
        // Catch empty "AFTER", "BEFORE" etc...
        if (OriginalCode.Length == 0)
        {
            throw new UMPException($"Command {Command} found with EMPTY code in entry {patch.CodeEntry}");
        }
        int startIndex = patch.Code.IndexOf(OriginalCode);

        // use to count all instances of original code
        int count = 0;
        if (startIndex != -1)
        {
            int index = startIndex;
            do
            {
                count++;
                index += OriginalCode.Length;
            }
            while ((index = patch.Code.IndexOf(OriginalCode, index)) != -1);
        }

        if (startIndex == -1)
        {
            throw new UMPException($"Could not find original code in {Command.ToUpper()} command for code entry: {patch.CodeEntry}. Original Code:\n" + OriginalCode);
        }
        else if (count > 1)
        {
            throw new UMPException($"More than one matching original code has been found in {Command.ToUpper()} command for code entry: {patch.CodeEntry}. Original Code:\n{OriginalCode}");
        }
        return startIndex;
    }

    public UMPPatchCommand (string newCode, string originalCode = null, bool isASM = false)
    {
        NewCode = newCode;
        OriginalCode = originalCode;
        IsASM = isASM;
    }
}

/// <summary>
/// Command that places some code after another
/// </summary>
class UMPAfterCommand : UMPPatchCommand
{
    public override string Command => "After";

    public UMPAfterCommand (string newCode, string originalCode = null, bool isASM = false) : base(newCode, originalCode, isASM) { }

    public override bool BasedOnText => true;

    public override bool RequiresCompilation => true;
}

/// <summary>
/// Command that places some code before another
/// </summary>
class UMPBeforeCommand : UMPPatchCommand
{
    public override string Command => "Before";

    public UMPBeforeCommand (string newCode, string originalCode = null, bool isASM = false) : base(newCode, originalCode, isASM) { }

    public override bool BasedOnText => true;

    public override bool RequiresCompilation => true;
}

/// <summary>
/// Command that replaces some code for another
/// </summary>
class UMPReplaceCommand : UMPPatchCommand
{
    public override string Command => "Replace";

    public UMPReplaceCommand (string newCode, string originalCode = null, bool isASM = false) : base(newCode, originalCode, isASM) { }

    public override bool BasedOnText => true;

    public override bool RequiresCompilation => true;

}

/// <summary>
/// Command that adds code to the end of a code entry
/// </summary>
class UMPAppendCommand : UMPPatchCommand
{
    public override string Command => "Append";

    public UMPAppendCommand (string newCode, string originalCode = null, bool isASM = false) : base(newCode, originalCode, isASM) { }

    public override bool BasedOnText => false;

    // Assembly doesn't have a direct append method, but "decompilation" in this case means getting the assembly code
    public override bool RequiresCompilation => IsASM;
}

/// <summary>
/// Command that prepends code to the start of a code entry
/// </summary>
class UMPPrependCommand : UMPPatchCommand
{
    public override string Command => "Prepend";

    public UMPPrependCommand (string newCode, string originalCode = null, bool isASM = false) : base(newCode, originalCode, isASM) { }

    public override bool BasedOnText => false;

    public override bool RequiresCompilation => true;
}

/// <summary>
/// Represents a .gml file that has the `/// PATCH` syntax in it
/// </summary>
class UMPPatchFile
{
    /// <summary>
    /// All commands in the patch that require modifying the decompiled code
    /// </summary>
    public List<UMPPatchCommand> DecompileCommands = new();

    /// <summary>
    /// All commands in the patch that don't require modifying the decompiled code
    /// </summary>
    public List<UMPPatchCommand> NonDecompileCommands = new();

    /// <summary>
    /// Whether any of the patches require the code to be decompiled and then recompiled to create the changes
    /// </summary>
    public bool RequiresCompilation => DecompileCommands.Count > 0;

    /// <summary>
    /// Code of the code entry that is being updated, expected to always be up to date with patch changes
    /// </summary>
    public string Code { get; set ; }

    /// <summary>
    /// Name of the code entry that is being updated
    /// </summary>
    public string CodeEntry { get; set; }

    /// <summary>
    /// Whether the patch is for a disassembly text file or not
    /// </summary>
    public bool IsASM { get; set; }

    /// <summary>
    /// Should be UMP_WRAPPER
    /// </summary>
    public UMPWrapper Wrapper { get; set; }

    public UMPDecompiler HelperDecompiler { get; set; }

    public UMPPatchFile (string gmlCode, string entryName, bool isASM, UMPWrapper wrapper, UMPDecompiler decompiler)
    {
        IsASM = isASM;
        Wrapper = wrapper;
        HelperDecompiler = decompiler;

        // removes the first line (the /// PATCH line)
        gmlCode = gmlCode.Substring(gmlCode.IndexOf('\n') + 1);
        string[] patchLines = gmlCode.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.None);
        CodeEntry = entryName;

        Type currentCommand = null;
        List<string> originalCode = new();
        List<string> newCode = new();
        bool inOriginalText = true;

        foreach (string line in patchLines)
        {
            if (currentCommand != null)
            {
                if (line.StartsWith("///"))
                {
                    if (inOriginalText)
                    {
                        if (Regex.IsMatch(line, @"\bCODE\b"))
                        {
                            inOriginalText = false;
                        }
                        else
                        {
                            throw new UMPException($"Error in patch file \"{entryName}\": Expected CODE command");
                        }
                    }
                    else if (Regex.IsMatch(line, @"\bEND\b"))
                    {
                        inOriginalText = true;
                        string originalCodeString = string.Join("\n", originalCode);
                        string newCodeString = string.Join("\n", newCode);
                        object command = Activator.CreateInstance(currentCommand, args: new object[] { newCodeString, originalCodeString, IsASM });
                        if (((UMPPatchCommand)command).RequiresCompilation)
                        {
                            DecompileCommands.Add((UMPPatchCommand)command);
                        }
                        else
                        {
                            NonDecompileCommands.Add((UMPPatchCommand)command);
                        }
                        currentCommand = null;
                        newCode = new List<string>();
                        originalCode = new List<string>();
                    }
                    else
                    {
                        throw new UMPException($"Error in patch file \"{entryName}\": Expected END command");
                    }
                }
                else
                {
                    if (inOriginalText)
                    {
                        originalCode.Add(line);
                    }
                    else
                    {
                        newCode.Add(line);
                    }
                }
            }
            else
            {
                if (line.StartsWith("///"))
                {
                    if (Regex.IsMatch(line, @"\bAFTER\b"))
                    {
                        currentCommand = typeof(UMPAfterCommand);
                    }
                    else if (Regex.IsMatch(line, @"\bBEFORE\b"))
                    {
                        currentCommand = typeof(UMPBeforeCommand);
                    }
                    else if (Regex.IsMatch(line, @"\bREPLACE\b"))
                    {
                        currentCommand = typeof(UMPReplaceCommand);
                    }
                    else if (Regex.IsMatch(line, @"\bAPPEND\b"))
                    {
                        inOriginalText = false;
                        currentCommand = typeof(UMPAppendCommand);
                    }
                    else if (Regex.IsMatch(line, @"\bPREPEND\b"))
                    {
                        inOriginalText = false;
                        currentCommand = typeof(UMPPrependCommand);
                    }
                    else
                    {
                        throw new UMPException($"Unknown command ({line}) in patch file: {entryName}");
                    }
                }
            }
        }
    }

    /// <summary>
    /// Decompiles the code or extracts the dissassembly text for the code entry being patched
    /// </summary>
    /// <exception cref="UMPException"></exception>
    public void AddCode ()
    {
        try
        {
            if (IsASM)
            {
                // necessary due to linebreak whitespace inconsistency
                Code = Wrapper.GetDisassemblyText(CodeEntry).Replace("\r", "");
            }
            else
            {
                Code = HelperDecompiler.GetDecompiledText(CodeEntry);
            }
        }
        catch
        {
            throw new UMPException($"Error decompiling code entry \"{CodeEntry}\". Most likely the code entry was not found");
        }
    }

    /// <summary>
    /// Merge another patch file into this one
    /// </summary>
    /// <param name="other"></param>
    public void Merge (UMPPatchFile other)
    {
        DecompileCommands.AddRange(other.DecompileCommands);
        NonDecompileCommands.AddRange(other.NonDecompileCommands);
    }

    public override string ToString()
    {
        return $"{CodeEntry}.{(IsASM ? "asm" : "gml")}";
    }
}

/// <summary>
/// Represents a code entry that will be added
/// </summary>
public class UMPCodeEntry
{
    public string Name { get; set; }
    public string Code { get; set; }

    public string FileName => Name + (IsASM ? ".asm" : ".gml");

    public bool IsASM { get; set; }

    public UMPWrapper Wrapper { get; set; }

    public UMPCodeEntry (string name, string code, bool isASM = false, UMPWrapper wrapper = null)
    {
        Name = name;
        Code = code;
        IsASM = isASM;
        Wrapper = wrapper;
    }

    public override bool Equals(object obj)
    {        
        if (obj == null || GetType() != obj.GetType())
        {
            return false;
        }
        
        UMPCodeEntry other = (UMPCodeEntry)obj;
        return Name == other.Name && Code == other.Code;
    }
    
    public override int GetHashCode()
    {
        // TODO: write your implementation of GetHashCode() here
        throw new System.NotImplementedException();
        return base.GetHashCode();
    }

    public void Import ()
    {
        UndertaleModLib.Compiler.CodeImportGroup localImportGroup = new(Wrapper.Data);
        localImportGroup.QueueReplace(Name, Code);
        localImportGroup.Import();
    }
}

/// <summary>
/// Represents a code entry that is a function
/// </summary>
class UMPFunctionEntry : UMPCodeEntry
{
    public string FunctionName { get; set; }

    public UMPFunctionEntry (string name, string code, string functionName, bool isASM, UMPWrapper wrapper) : base(name, code, isASM, wrapper)
    {
        FunctionName = functionName;
    }
}

public class UMPException : Exception
{
    public UMPException(string message) : base(message)
    {
    }
}

public class UMPWrapper
{
    public UndertaleData Data;

    public string ScriptPath;

    public string DataPath;

    public Func<string, string> GetDisassemblyText;

    public Func<string, string> GetDecompiledText;

    public GlobalDecompileContext DecompileContext;

    public Underanalyzer.Decompiler.IDecompileSettings DecompileSettings;

    public UMPWrapper
    (
        UndertaleData data,
        string scriptPath,
        string dataPath,
        Func<string, string> getDisassemblyText,
        GlobalDecompileContext decompileContext,
        Underanalyzer.Decompiler.IDecompileSettings decompileSettings
    )
    {
        Data = data;
        ScriptPath = scriptPath;
        DataPath = dataPath;
        GetDisassemblyText = getDisassemblyText;
        DecompileContext = decompileContext;
        DecompileSettings = decompileSettings;
        if (Data.GlobalFunctions is null)
        {
            GlobalDecompileContext.BuildGlobalFunctionCache(Data);
        }
    }
}

/// <summary>
/// Class that takes care of decompiling the code
/// </summary>
class UMPDecompiler
{
    /// <summary>
    /// Path where the cache is stored for the current opened game
    /// </summary>
    public string DecompileCachePath;

    /// <summary>
    /// Should be UMP_WRAPPER
    /// </summary>
    public UMPWrapper Wrapper;

    /// <summary>
    /// Whether to use the decompile cache or not
    /// </summary>
    public bool UseDecompileCache;

    public UMPDecompiler (UMPWrapper wrapper, bool useDecompileCache)
    {
        Wrapper = wrapper;
        UseDecompileCache = useDecompileCache;

        // use md5hash to separate the cached folders
        string md5Hash;
        using (var md5 = MD5.Create())
        {
            using (var stream = File.OpenRead(Wrapper.DataPath))
            {
                md5Hash = BitConverter.ToString(md5.ComputeHash(stream)).Replace("-", "").ToLowerInvariant();
            }
        }

        DecompileCachePath = Path.Combine(Path.GetDirectoryName(Wrapper.ScriptPath), "DecompileCache", md5Hash);
    }

    /// <summary>
    /// Get the decompiled text for a code entry
    /// </summary>
    /// <param name="codeEntry"></param>
    /// <returns></returns>
    public string GetDecompiledText (string codeEntry)
    {
        if (UseDecompileCache && File.Exists(Path.Combine(DecompileCachePath, codeEntry + ".gml")))
        {
            return File.ReadAllText(Path.Combine(DecompileCachePath, codeEntry + ".gml"));
        }
        else
        {
            string code = new Underanalyzer.Decompiler.DecompileContext(Wrapper.DecompileContext, Wrapper.Data.Code.ByName(codeEntry), Wrapper.DecompileSettings).DecompileToString();

            if (UseDecompileCache)
            {
                Directory.CreateDirectory(DecompileCachePath);
                File.WriteAllText(Path.Combine(DecompileCachePath, codeEntry + ".gml"), code);
            }
            return code;
        }
    }
}