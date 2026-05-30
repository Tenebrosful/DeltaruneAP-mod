/// PATCH .ignore if CHAPTER_1

/// REPLACE
#if CHAPTER_1
        window_set_caption(scr_84_get_lang_string("scr_windowcaption_slash_scr_windowcaption_gml_1_0"));
#elsif CHAPTER_4
        window_set_caption("DELTARUNE Chapter 4");
#else
        window_set_caption("DELTARUNE Chapter " + string(global.chapter));
#endif
/// CODE
        window_set_caption("DELTARUNE Chapter " + string(global.chapter) + " - Archipelago " + get_version());
/// END