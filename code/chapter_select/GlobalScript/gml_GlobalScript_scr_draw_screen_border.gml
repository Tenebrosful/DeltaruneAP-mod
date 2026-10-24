/// IMPORT
function scr_draw_screen_border(arg0)
{
    var border_id = arg0;
    draw_enable_alphablend(false);
    
    if (border_id == "Dynamic" || border_id == "ダイナミック")
    {
        if (!loaded)
        {
            obj_time._border_image = border_lw_town;
            obj_time.border_alpha = 0;
            obj_time.loaded = true;
        }
        
        obj_time.border_fade_value = 0.08;
        var room_id = room;
        
        if (room_id == PLACE_CHAPTER_SELECT_2x)
        {
            obj_time.border_fade_in = false;
            obj_time.border_fade_out = obj_time.border_alpha > 0;
        }
        else if (room_id == PLACE_ARCHIPELAGO_CONNECT)
        {
            if (instance_exists(obj_archipelago_connect_ui))
            {
                if (obj_archipelago_connect_ui.mode == "kris")
                    obj_time._border_image = border_dw_church_a;
                else
                    obj_time._border_image = border_lw_town;

                if (obj_archipelago_connect_ui.mode == "dog")
                {
                    obj_time.border_fade_in = false;
                    obj_time.border_fade_out = obj_time.border_alpha > 0;
                }
                else
                {
                    obj_time.border_fade_in = obj_time.border_alpha < 1;
                    obj_time.border_fade_out = false;
                }
            }
        }
        
        scr_draw_background_ps4(obj_time._border_image, 0, 0);
    }
    else if (border_id == "Simple" || border_id == "シンプル")
        scr_draw_background_ps4(border_line_1080, 0, 0);
    
    draw_set_alpha(1);
    draw_enable_alphablend(true);
}
