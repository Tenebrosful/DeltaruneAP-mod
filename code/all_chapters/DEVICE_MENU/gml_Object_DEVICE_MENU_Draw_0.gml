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