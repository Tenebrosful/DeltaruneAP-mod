/// PATCH

/// REPLACE
        if (menu == 12 || menu == 16)
        {
            draw_set_color(c_white);
            scr_84_set_draw_font("mainbig");
#if CHAPTER_1
            menumax = 11;
#else
            menumax = 47;
#endif
/// CODE
        if (menu == 12 || menu == 16)
        {
            draw_set_color(c_white);
            scr_84_set_draw_font("mainbig");
            menumax = 47;
/// END

/// REPLACE
        if (menu == 13 || menu == 17)
        {
            draw_set_color(c_white);
            scr_84_set_draw_font("mainbig");
#if CHAPTER_1
            menumax = 11;
#else
            menumax = 47;
#endif
/// CODE
        if (menu == 13 || menu == 17)
        {
            draw_set_color(c_white);
            scr_84_set_draw_font("mainbig");
            menumax = 59;
/// END