/// PATCH

#if !CHAPTER_5
#if CHAPTER_1
/// REPLACE
        case 3:
            spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_42_0");
            spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_43_0");
            spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_44_0");
            spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_45_0");
            spelltarget = 2;
            cost = 40;
            usable = 0;
            spellusable = 0;
            break;
/// CODE
        case 3:
            spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_42_0");
            spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_43_0");
            spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_44_0");
            spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_45_0");
            spelltarget = 2;
            cost = 40;

                if (global.charweapon[3] == 32)
                    cost = 0;

            usable = 0;
            spellusable = 0;
            break;
/// END
#else
/// AFTER
            spelldesc = stringsetloc("SPARE a tired enemy by putting them to sleep.", "scr_spellinfo_slash_scr_spellinfo_gml_45_0");
            spelltarget = 2;
            cost = 40;
/// CODE
            if (global.charweapon[3] == 32)
                cost = 0;
/// END
#endif
#endif