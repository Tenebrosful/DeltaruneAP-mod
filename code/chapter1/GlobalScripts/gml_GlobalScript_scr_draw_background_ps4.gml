/// PATCH

/// REPLACE
        draw_background(bg, xx, yy);
/// CODE
        var scale = window_get_width() / 1920;
        draw_background_stretched(bg, xx * scale, yy * scale, background_get_width(bg) * scale, background_get_height(bg) * scale);
/// END