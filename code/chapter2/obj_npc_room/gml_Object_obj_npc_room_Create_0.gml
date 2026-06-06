/// PATCH

/// AFTER
            if (global.plot < 200)
            {
/// CODE
                if (global.plot >= 50 && global.plot < 200)
                    instance_destroy();
                
/// END

/// REPLACE
        if (x > 1000)
        {
            if (global.flag[309] == 9)
/// CODE
        if (x > 1000)
        {
            if (global.flag[309] == 9 && global.customflags[global.custom_flags_indexes.mannequin_bought])
/// END

/// APPEND
if (room == room_dw_mansion_entrance)
{
    sprite_index = spr_butler;
    image_speed = 0;
    
    if (global.customflags[global.custom_flags_indexes.mansion_reservation_used])
        instance_destroy();
}

if (room == room_dw_cyber_battle_maze_2)
{
    sprite_index = spr_sweet_idle;
    extflag = "actionblocker"

    if (!global.AP_unlock_fun_gang_actions)
    {
        instance_destroy();
    }
    else if (!global.flag[34])
    {
        instance_destroy();
    }
}
/// END