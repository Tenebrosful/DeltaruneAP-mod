/// PATCH

/// APPEND
if (room == room_dw_snow_zone && extflag == "skip_pippins")
{
    if (global.choice == 0 && !d_ex() && talked > 0)
    {
        if (!i_ex(obj_fadeout))
        {
            timer = 0;
            instance_create(0, 0, obj_fadeout);
        }
        else
        {
            timer++;
            
            if (timer == 80)
            {
                instance_destroy(obj_fadeout);
                instance_create(0, 0, obj_persistentfadein);
                room_goto(room_dw_backstage);
                snd_free(global.currentsong[0]);
            }
        }
    }
}

if (room == room_dw_teevie_intro && extflag == "zapper" && global.customflags[global.custom_flags_indexes.used_VIP_pass] && instance_exists(obj_dialoguer) == false && y == 140 && x >= 1940)
{
    image_index = 0;
    image_speed = 0.2;
    
    if (x < 2100)
    {
        x += 10;
        global.interact = 1;
    }
    else
    {
        global.interact = 0;
        instance_destroy();
    }
}

/// END
