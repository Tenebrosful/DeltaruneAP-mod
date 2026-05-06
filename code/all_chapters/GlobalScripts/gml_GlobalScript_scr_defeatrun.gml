/// IMPORT
function scr_defeatrun()
{
    var __frozen;
    
    if (object_is_ancestor(object_index, obj_monsterparent))
    {
        __frozen = 0;
        
        if (global.flag[51 + myself] == 6)
            __frozen = 1;
        
        if (__frozen == 1)
        {
            _rtext = instance_create(global.monsterx[myself], global.monstery[myself] - 40, obj_recruitanim);
            _rtext.image_index = 12;
            
            if (global.chapter >= 2 && recruitable == 1)
                global.flag[global.monstertype[myself] + 600] = -1;
            
            AP_sendLocation(_checkid + 1000);
            global.flag[63] = 1;
        }
        
        if (global.chapter >= 2 && recruitable == 1 && global.flag[61] == 0 && __frozen == 0)
        {
            AP_sendLocation(_checkid + 1000);
            global.flag[63] = 1;
            
            if (global.flag[global.monstertype[myself] + 600] != -1)
            {
                global.flag[global.monstertype[myself] + 600] = -1;
                
                if (global.chapter == 4 && i_ex(obj_titan_spawn_enemy))
                {
                }
                else
                {
                    _rtext = instance_create(global.monsterx[myself], global.monstery[myself] - 40, obj_recruitanim);
                    _rtext.image_index = 7;
                }
            }
        }
    }
    else
    {
        fatal = 0;
    }
    
    if (!__frozen || (global.chapter == 4 && i_ex(obj_titan_spawn_enemy)))
    {
        if (fatal == 1 || (global.chapter == 4 && i_ex(obj_titan_spawn_enemy)))
        {
            defeatanim = instance_create(x, y, obj_deathanim);
            global.flag[1598]++;
        }
        else
        {
            defeatanim = instance_create(x, y, obj_defeatanim);
        }
    }
    else if (__frozen)
    {
        defeatanim = instance_create(x, y, obj_frozennpc);
        defeatanim.depth = depth;
        defeatanim.inbattle = 1;
    }
    
    defeatanim.sprite_index = sprite_index;
    defeatanim.sprite_index = hurtsprite;
    defeatanim.image_index = 0;
    defeatanim.image_xscale = image_xscale;
    defeatanim.image_yscale = image_yscale;
    instance_destroy();
}
