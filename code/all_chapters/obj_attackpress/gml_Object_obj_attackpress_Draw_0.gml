/// PATCH

#if !CHAPTER_5
/// REPLACE
            draw_sprite(spr_pressspot, j - 1, x + 80, y + (38 * i));
/// CODE
            if (global.charweapon[1] == 33 && j == 1)
                draw_sprite(spr_pressspot, 4, x + 80, y + (38 * i));
            else
                draw_sprite(spr_pressspot, j - 1, x + 80, y + (38 * i));
/// END
#endif