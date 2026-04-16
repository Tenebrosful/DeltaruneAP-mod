#load "ump.csx"

using System.Linq;
using System.Drawing;
using UndertaleModLib.Util;

SyncBinding("Strings, Variables, Functions", true);
UndertaleModLib.Compiler.CodeImportGroup importGroup = new(Data);

class ArchipelagoLoader : UMPLoader
{
    public override string CodePath => "code/";

    public override bool UseGlobalScripts => true;

    public override string[] Symbols => chnum switch
    {
        0 => new[] { "CHAPTER_SELECT" },
        1 => new[] { "CHAPTER_1" },
        2 => new[] { "CHAPTER_2" },
        3 => new[] { "CHAPTER_3" },
        4 => new[] { "CHAPTER_4" },
        5 => new[] { "CHAPTER_5" },
        6 => new[] { "CHAPTER_6" },
        7 => new[] { "CHAPTER_7" },
        _ => throw new NotImplementedException()
    };

    public override string[] GetCodeNames(string filePath)
    {
        List<string> entries = new List<string>();
        string fileName = Path.GetFileNameWithoutExtension(filePath);

        if ((chnum > 0 && filePath.Contains("all_chapters")) || filePath.Contains(chnum == 0 ? "chapter_select" : $"chapter{chnum}"))
            entries.Add(fileName);

        return entries.ToArray();
    }

    public ArchipelagoLoader(UMPWrapper wrapper, int chapter) : base(wrapper)
    {
        chnum = chapter;
    }

    public int chnum { get; set; }
    
    public string GetChapterNumber()
    {
        return chnum.ToString();
    }
}

void BuildMod(int chapter)
{
    ArchipelagoLoader loader = new ArchipelagoLoader(UMP_WRAPPER, chapter);
    string scriptPath = Path.GetDirectoryName(ScriptPath);

    // if(chapter > 0)
    //     RunUMTScript(Path.Combine(scriptPath, "sprites/ImportGraphics.csx"));
    
    // Import fnt_main from Chapter 1 into other chapters because for some reason the text acts really strange otherwise.
    // For example, the m/M and w/W letters on the board are shifted down-right IF you enter from Chapter Select and you're not on fullscreen.
    if(chapter > 1)
        RunUMTScript(Path.Combine(scriptPath, "fnt_main_ch1/ImportFonts.csx"));
    
    loader.Load();

    // List<UndertaleCode> toDump = Data.Code.Where(c => c.ParentEntry is null).ToList();
    // foreach (UndertaleCode code in toDump)
    // {
    //     if (code is null || code.Name.Content == "gml_GlobalScript_game_restart_true")
    //         continue;

    //     importGroup.QueueFindReplace(code, "game_restart(", "game_restart_true(", true);
    // }
    importGroup.Import();
    DisableAllSyncBindings();

    ScriptMessage(chapter == 0 ? "Archipelago Mod for DELTARUNE Chapter Select was imported!" : $"Archipelago Mod for DELTARUNE Chapter {chapter} was imported!");
}