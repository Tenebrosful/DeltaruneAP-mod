/// PATCH

/// AFTER
        draw_set_alpha(0.4);
        draw_set_color(c_white);
/// CODE
#if CHAPTER_1 || CHAPTER_2
        draw_text_transformed(10, 230, "Archipelago", 0.5, 0.5, 0);
#else
        draw_text_transformed(9, 228, "Archipelago", 0.5, 0.5, 0);
#endif
/// END

#if CHAPTER_1
/// AFTER
    else
    {
        draw_set_color(COL_A);
/// CODE
        draw_text_transformed(60.5, 230, "Archipelago", 0.5, 0.5, 0);
/// END
#endif