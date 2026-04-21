/// PATCH

/// REPLACE
        var sus_x, sus_sprite, sus_index, sus_y, sus_height, ral_x, ral_sprite, ral_index, ral_y, ral_height;
        
        with (obj_caterpillarchara)
        {
            if (name == "susie")
            {
                sus_x = x;
                sus_y = y;
                sus_sprite = sprite_index;
                sus_index = image_index;
                sus_height = sprite_height;
            }
            
            if (name == "ralsei")
            {
                ral_x = x;
                ral_y = y;
                ral_sprite = sprite_index;
                ral_index = image_index;
                ral_height = sprite_height;
            }
        }
        
        if (sus_x != 0)
            draw_sprite_ext(sus_sprite, sus_index, sus_x, (sus_y + (sus_height * 2)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
        
        if (ral_x != 0)
            draw_sprite_ext(ral_sprite, ral_index, ral_x, (ral_y + (ral_height * 2)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
/// CODE
        var sus_x, sus_sprite, sus_index, sus_y, sus_height, ral_x, ral_sprite, ral_index, ral_y, ral_height, noe_x, noe_sprite, noe_index, noe_y, noe_height;
        
        with (obj_caterpillarchara)
        {
            if (scr_havechar(2))
            {
                if (name == "susie")
                {
                    sus_x = x;
                    sus_y = y;
                    sus_sprite = sprite_index;
                    sus_index = image_index;
                    sus_height = sprite_height;
                }
            }
            
            if (scr_havechar(3))
            {
                if (name == "ralsei")
                {
                    ral_x = x;
                    ral_y = y;
                    ral_sprite = sprite_index;
                    ral_index = image_index;
                    ral_height = sprite_height;
                }
            }
            
            if (scr_havechar(4))
            {
                if (name == "noelle")
                {
                    noe_x = x;
                    noe_y = y;
                    noe_sprite = sprite_index;
                    noe_index = image_index;
                    noe_height = sprite_height;
                }
            }
        }
        
        if (scr_havechar(2))
        {
            if (sus_x != 0)
                draw_sprite_ext(sus_sprite, sus_index, sus_x, (sus_y + (sus_height * 2)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
        }
        
        if (scr_havechar(3))
        {
            if (ral_x != 0)
                draw_sprite_ext(ral_sprite, ral_index, ral_x, (ral_y + (ral_height * 2)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
        }
        
        if (scr_havechar(4))
        {
            if (noe_x != 0)
                draw_sprite_ext(noe_sprite, noe_index, noe_x, (noe_y + (noe_height * 2)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
        }
/// END