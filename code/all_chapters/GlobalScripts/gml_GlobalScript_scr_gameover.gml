/// IMPORT
function scr_gameover()
{
    if (global.AP_deathlink && !global.AP_deathlink_protected)
    {
        if (instance_exists(obj_archipelago_client) && obj_archipelago_client.AP_isAuthenticated())
        {
            obj_archipelago_client.AP_sendDeathlink();
        }
    }
    
    if (!(room == room_gameover || room == PLACE_FAILURE))
    {
        if (global.chapter == 2)
        {
            if (room == room_dw_mansion_b_west_2f)
                global.tempflag[33]++;
            
            if (room == room_dw_mansion_east_4f_d && i_ex(obj_queen_enemy))
            {
                global.hp[1] = global.maxhp[1];
                global.hp[2] = global.maxhp[2];
                global.hp[3] = global.maxhp[3];
                scr_tempsave();
            }
            
            if (i_ex(obj_spamton_neo_enemy))
                global.tempflag[37]++;
        }

        audio_stop_all();
        snd_play(snd_hurt1);
        
        if (global.chapter == 1 && room == room_forest_fightsusie)
        {
            global.entrance = 0;
            global.tempflag[9] = 1;
            room_goto(room_forest_savepoint3);
        }
        else
        {
            global.screenshot = sprite_create_from_surface(application_surface, 0, 0, __view_get(e__VW.WView, 0), __view_get(e__VW.HView, 0), 0, 0, 0, 0);
            snd_free_all();
            room_goto(room_gameover);
        }
    }
}

enum e__VW
{
    XView,
    YView,
    WView,
    HView,
    Angle,
    HBorder,
    VBorder,
    HSpeed,
    VSpeed,
    Object,
    Visible,
    XPort,
    YPort,
    WPort,
    HPort,
    Camera,
    SurfaceID
}
