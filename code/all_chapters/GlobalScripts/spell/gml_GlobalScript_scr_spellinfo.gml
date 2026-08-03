/// PATCH

#if !CHAPTER_5
/// AFTER
        case 3:
            spellname = stringsetloc("Pacify", "scr_spellinfo_slash_scr_spellinfo_gml_42_0");
            spellnameb = stringsetloc("Pacify", "scr_spellinfo_slash_scr_spellinfo_gml_43_0");
            spelldescb = stringsetloc("Spare#TIRED foe", "scr_spellinfo_slash_scr_spellinfo_gml_45_0_c");
            spelldesc = stringsetloc("SPARE a tired enemy by putting them to sleep.", "scr_spellinfo_slash_scr_spellinfo_gml_45_0");
            spelltarget = 2;
            cost = 40;
/// CODE
            if (global.charweapon[3] == 32)
                cost = 0;
/// END
#endif