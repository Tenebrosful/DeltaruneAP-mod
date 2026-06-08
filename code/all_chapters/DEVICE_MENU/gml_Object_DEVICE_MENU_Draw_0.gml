/// PATCH

/// AFTER
        draw_set_alpha(0.4);
        draw_set_color(c_white);
/// CODE
#if CHAPTER_1 || CHAPTER_2
        draw_text_transformed(10, 230, "Archipelago " + get_version(), 0.5, 0.5, 0);
#else
        draw_text_transformed(9, 228, "Archipelago " + get_version(), 0.5, 0.5, 0);
#endif
/// END

#if CHAPTER_1
/// AFTER
    else
    {
        draw_set_color(COL_A);
/// CODE
        draw_text_transformed(10, 230, "Archipelago " + get_version(), 0.5, 0.5, 0);
/// END
#endif

#if CHAPTER_1
/// REPLACE
draw_text_shadow(__view_get(e__VW.XView, 0) + 8, __view_get(e__VW.YView, 0) + 4, "CHAPTER 1");
/// CODE
draw_text_shadow(__view_get(e__VW.XView, 0) + 8, __view_get(e__VW.YView, 0) + 4, "CHAPTER " + string(global.chapter) + " (Current Route: " + + AP_resolve_route_name(global.AP_route) + ")");
/// END
#else
/// REPLACE
draw_text_shadow(camerax() + 8, cameray() + 4, "CHAPTER " + string(global.chapter));
/// CODE
draw_text_shadow(camerax() + 8, cameray() + 4, "CHAPTER " + string(global.chapter) + " (Current Route: " + + AP_resolve_route_name(global.AP_route) + ")");
/// END
#endif

#if !CHAPTER_1
/// REPLACE
        draw_text_shadow(40, 30, TEMPCOMMENT);
/// CODE
        if (MENU_NO == 10)
            draw_set_color(c_red);
        
        draw_text_shadow(40, 30, TEMPCOMMENT);
        
        if (MENU_NO == 10)
            draw_set_color(c_white);
/// END
#endif

#if CHAPTER_2
/// REPLACE
            if (MENU_NO == 10)
                TEMPCOMMENT = stringsetloc("Start Chapter 2 from Chapter 1's FILE.", "DEVICE_MENU_slash_Draw_0_gml_291_0");
/// CODE
            if (MENU_NO == 10)
                TEMPCOMMENT = stringsetsubloc("USING COMPLETION DATA ISN'T RECOMMENDED", string(global.chapter), string(global.chapter - 1), "DEVICE_MENU_slash_Draw_0_gml_387_0");
/// END
#endif

#if !CHAPTER_1 && !CHAPTER_2
/// REPLACE
            if (MENU_NO == 10)
                TEMPCOMMENT = stringsetsubloc("Start Chapter ~1 from Chapter ~2's FILE.", string(global.chapter), string(global.chapter - 1), "DEVICE_MENU_slash_Draw_0_gml_387_0");
/// CODE
            if (MENU_NO == 10)
                TEMPCOMMENT = stringsetsubloc("USING COMPLETION DATA ISN'T RECOMMENDED", string(global.chapter), string(global.chapter - 1), "DEVICE_MENU_slash_Draw_0_gml_387_0");
/// END
#endif