/// PATCH

/// REPLACE
        var sus_x, sus_sprite, sus_y, sus_index, sus_depth, ral_x, ral_sprite, ral_y, ral_index, ral_depth;
        
        with (obj_caterpillarchara)
        {
            if (name == "susie")
            {
                sus_x = x;
                sus_y = y;
                sus_sprite = sprite_index;
                sus_index = image_index;
                sus_depth = depth;
            }
            
            if (name == "ralsei")
            {
                ral_x = x;
                ral_y = y;
                ral_sprite = sprite_index;
                ral_index = image_index;
                ral_depth = depth;
            }
        }
        
        if (sus_x != 0)
        {
            shadow_char[1].sprite_index = sus_sprite;
            shadow_char[1].image_xscale = 2;
            shadow_char[1].image_yscale = 2;
            shadow_char[1].x = sus_x;
            shadow_char[1].y = sus_y + 4;
            shadow_char[1].image_blend = frontShadowColor;
            shadow_char[1].image_alpha = frontshadOpacity;
            shadow_char[1].image_index = sus_index;
            shadow_char[1].depth = sus_depth - 1;
        }
        
        if (ral_x != 0)
        {
            shadow_char[2].sprite_index = ral_sprite;
            shadow_char[2].image_xscale = 2;
            shadow_char[2].image_yscale = 2;
            shadow_char[2].x = ral_x;
            shadow_char[2].y = ral_y + 4;
            shadow_char[2].image_blend = frontShadowColor;
            shadow_char[2].image_alpha = frontshadOpacity;
            shadow_char[2].image_index = ral_index;
            shadow_char[2].depth = ral_depth - 1;
/// CODE
        var sus_x, sus_sprite, sus_y, sus_index, sus_depth, ral_x, ral_sprite, ral_y, ral_index, ral_depth, noe_x, noe_sprite, noe_y, noe_index, noe_depth;
        
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
                    sus_depth = depth;
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
                    ral_depth = depth;
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
                    noe_depth = depth;
                }
            }
        }
        
        if (scr_havechar(2))
        {
            if (sus_x != 0)
            {
                shadow_char[1].sprite_index = sus_sprite;
                shadow_char[1].image_xscale = 2;
                shadow_char[1].image_yscale = 2;
                shadow_char[1].x = sus_x;
                shadow_char[1].y = sus_y + 4;
                shadow_char[1].image_blend = frontShadowColor;
                shadow_char[1].image_alpha = frontshadOpacity;
                shadow_char[1].image_index = sus_index;
                shadow_char[1].depth = sus_depth - 1;
            }
        }
        
        if (scr_havechar(3))
        {
            if (ral_x != 0)
            {
                shadow_char[2].sprite_index = ral_sprite;
                shadow_char[2].image_xscale = 2;
                shadow_char[2].image_yscale = 2;
                shadow_char[2].x = ral_x;
                shadow_char[2].y = ral_y + 4;
                shadow_char[2].image_blend = frontShadowColor;
                shadow_char[2].image_alpha = frontshadOpacity;
                shadow_char[2].image_index = ral_index;
                shadow_char[2].depth = ral_depth - 1;
            }
        }
        
        if (scr_havechar(4))
        {
            if (noe_x != 0)
            {
                shadow_char[1].sprite_index = noe_sprite;
                shadow_char[1].image_xscale = 2;
                shadow_char[1].image_yscale = 2;
                shadow_char[1].x = noe_x;
                shadow_char[1].y = noe_y + 4;
                shadow_char[1].image_blend = frontShadowColor;
                shadow_char[1].image_alpha = frontshadOpacity;
                shadow_char[1].image_index = noe_index;
                shadow_char[1].depth = noe_depth - 1;
            }
/// END