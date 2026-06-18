#load "ump.csx"
#load "rooms\room_loader.csx"
#load "gameObjects\game_objects_loader.csx"
#load "sounds\ImportSingleSound.csx"

using ImageMagick;
using System.Linq;
using System.Drawing;
using UndertaleModLib.Util;

UndertaleModLib.Compiler.CodeImportGroup importGroup = new(Data);

class ArchipelagoLoader : UMPLoader
{

    public readonly string version = "v2.0.3b";

    public readonly string[] client_version = ["2", "0", "3"];

    public readonly string max_armor = "60";

    public readonly string max_weapon = "48";

    public readonly string max_flag = "2500";

    public readonly string max_storage = "72";

    public string GetVersion()
    {
        return $"\"{version}\"";
    }

    public string GetClientVersion()
    {
        return $"[\"{client_version[0]}\", \"{client_version[1]}\", \"{client_version[2]}\"]";
    }

    public string GetMaxArmor()
    {
        return max_armor;
    }

    public string GetMaxWeapon()
    {
        return max_weapon;
    }

    public string GetMaxFlag()
    {
        return max_flag;
    }

    public string GetMaxStorage()
    {
        return max_storage;
    }
    
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

    public string getChapterFolderName => chnum switch
    {
        0 => "chapter_select",
        _ => $"chapter{chnum}"
    };

    public override bool AcceptFile(string filePath)
    {
        return (chnum > 0 && filePath.Contains("all_chapters")) || filePath.Contains(getChapterFolderName) || filePath.Contains("common");
    }

    public override string[] GetCodeNames(string filePath)
    {
        List<string> entries = new List<string>();
        string fileName = Path.GetFileNameWithoutExtension(filePath);
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

void BuildModRoomsOnly(int chapter)
{
    Build_rooms(chapter);
}

void BuildMod(int chapter)
{
    if (Data.GeneralInfo.Name == Data.Strings.MakeString("DELTARUNEAP"))
    {
        ScriptMessage("Data.win is already patched !");
        return;
    }

    ArchipelagoLoader loader = new(UMP_WRAPPER, chapter);

    Data.GeneralInfo.Name = Data.Strings.MakeString("DELTARUNEAP");

    string scriptPath = Path.GetDirectoryName(ScriptPath);

    RunUMTScript(Path.Combine(scriptPath, "sprites/ImportGraphics.csx"));

    if (chapter > 0)
    {
        ReplacePageItemTexture(Data.Sprites.ByName("bg_myroom_dark").Textures[0].Texture.Name.Content, "kris_room_dark.png");
        ReplacePageItemTexture(Data.Sprites.ByName("bg_myroom").Textures[0].Texture.Name.Content, "kris_room.png");
    }
    
    if (chapter == 1)
    {
        Load_audio(Path.Combine(scriptPath, "sounds/snd_dtrans_lw.ogg"));
        Load_audio(Path.Combine(scriptPath, "sounds/snd_moss_fanfare.wav"));
        Load_audio(Path.Combine(scriptPath, "sounds/snd_cd_bagel_kris.wav"));
        Load_audio(Path.Combine(scriptPath, "sounds/snd_cd_bagel_susie.wav"));
        Load_audio(Path.Combine(scriptPath, "sounds/snd_cd_bagel_ralsei.wav"));
    }

    // Import fnt_main from Chapter 1 into other chapters because for some reason the text acts really strange otherwise.
    // For example, the m/M and w/W letters on the board are shifted down-right IF you enter from Chapter Select and you're not on fullscreen.
    if (chapter > 1)
        RunUMTScript(Path.Combine(scriptPath, "fnt_main_ch1/ImportFonts.csx"));

    Build_Early_Rooms(chapter);
    loader.Load();
    
    Build_gameobjects(chapter);
    Build_rooms(chapter);

    // List<UndertaleCode> toDump = Data.Code.Where(c => c.ParentEntry is null).ToList();
    // foreach (UndertaleCode code in toDump)
    // {
    //     if (code is null || code.Name.Content == "gml_GlobalScript_game_restart_true")
    //         continue;

    //     importGroup.QueueFindReplace(code, "game_restart(", "game_restart_true(", true);
    // }
    importGroup.Import();
    
    if (chapter == 0)
        Data.GeneralInfo.DisplayName = Data.Strings.MakeString($"DELTARUNE Chapter Select - Archipelago {loader.version}");
    else
        Data.GeneralInfo.DisplayName = Data.Strings.MakeString($"DELTARUNE Chapter {chapter} - Archipelago {loader.version}");

    ScriptMessage(chapter == 0 ? "Archipelago Mod for DELTARUNE Chapter Select was imported!" : $"Archipelago Mod for DELTARUNE Chapter {chapter} was imported!");
}

void ReplacePageItemTexture(string itemName, string textureName)
{
    Data.TexturePageItems.ByName(itemName).ReplaceTexture
    (
        new MagickImage(Path.Combine(Path.GetDirectoryName(ScriptPath), textureName))
    );
}