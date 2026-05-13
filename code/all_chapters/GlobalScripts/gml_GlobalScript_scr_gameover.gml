/// IMPORT
function scr_gameover()
{
    switch(global.chapter)
    {
        case 2:
            if (room == room_dw_mansion_east_4f_c || room == room_dw_mansion_east_3f_projection || room == room_dw_mansion_east_2f_d)
            {
                global.hp[1] = global.maxhp[1];
                global.hp[2] = global.maxhp[2];
                global.hp[3] = global.maxhp[3];
                scr_tempsave();
            }
            break;
        case 3:
            if (room == room_dw_chef || room == room_dw_chef_empty || room == room_dw_rhythm || room == room_dw_rhythm_empty)
                exit;

            if (room == room_dw_green_room || room_ch3_gameshowroom)
                scr_tempsave();
            break;
    }

    if (global.AP_deathlink)
    {
        if (instance_exists(obj_archipelago_client) && obj_archipelago_client.AP_isAuthenticated())
        {
            var text = undefined;

            if (global.encounterno > 0)
            {
                text = global.AP_name + " died in battle against ";

                var enemies_name = []

                if (global.monstername[0] != " ")
                    array_push(enemies_name, global.monstername[0])
                if (global.monstername[1] != " ")
                    array_push(enemies_name, global.monstername[1])
                if (global.monstername[2] != " ")
                    array_push(enemies_name, global.monstername[2])

                switch(array_length(enemies_name))
                {
                    case 1:
                        text += enemies_name[0]
                        break;
                    case 2:
                        text += string_join(" and ", enemies_name[0], enemies_name[1])
                        break;
                    case 3:
                        text += string_join(", ", enemies_name[0], enemies_name[1])
                        text += " and " + enemies_name[2]
                        break;
                }

                text += "."
            }

            obj_archipelago_client.AP_sendDeathlink(text);
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
