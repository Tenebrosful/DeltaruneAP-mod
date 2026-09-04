/// PATCH

/// AFTER
if (con >= 1)
{
/// CODE
    if (global.flag[220] == 3 && global.flag[221] == 3 && global.flag[222] == 3 && global.flag[223] == 27 && global.flag[224] == 27 && global.flag[225] == 27)
    {
        draw_sprite_ext(scr_84_get_sprite("spr_thrashstats"), 6, xx + 440, yy + 120 + 144, 2, 2, 0, make_color_hsv(216, 255, 255), logoalpha);
        
        for (j = 0; j < 4; j += 1)
        {
            if (j % 2)
                color = ##FFAEC9;
            else
                color = ##FFF200;
            
            draw_sprite_ext(spr_thrashstar, 6, xx + 510 + (j * 20), yy + 120 + 144, 2, 2, 0, color, logoalpha);
        }
    }

/// END