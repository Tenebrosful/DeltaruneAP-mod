/// IMPORT
function scr_gameover()
{
    if (room == ROOM_INITIALIZE || string_pos("PLACE", room_get_name(room)) != 0 || room == room_gameover) exit;

    room_to_goto = room_gameover;

    switch(global.chapter)
    {
        case 1:
            switch(room)
            {
                case room_legend:
                    exit;

                case room_forest_fightsusie:
                    global.entrance = 0;
                    global.tempflag[9] = 1;
                    room_to_goto = room_forest_savepoint3;
                break;
            }
            break;
        case 2:
            if (i_ex(obj_spamton_neo_enemy))
                global.tempflag[37]++;
            
            switch(room)
            {
                case room_intro_ch2:
                    exit;
                
                case room_dw_mansion_b_west_2f:
                    global.tempflag[33]++;
                    break;
                case room_dw_mansion_east_2f_d:
                case room_dw_mansion_east_3f_projection:
                case room_dw_mansion_east_4f_c:
                case room_dw_mansion_east_4f_d:
                    global.hp[1] = global.maxhp[1];
                    global.hp[2] = global.maxhp[2];
                    global.hp[3] = global.maxhp[3];
                    scr_tempsave();
                    break;
            }
            break;
        case 3:
            switch(room)
            {
                case room_title_placeholder:
                case room_dw_chef:
                case room_dw_chef_empty:
                case room_dw_rhythm:
                case room_dw_rhythm_empty:
                case room_ch3_gameshowroom:
                    exit;

                case room_dw_green_room:
                    scr_tempsave();
                    break;
            }
            break;
        case 4:
            switch(room)
            {
                case room_title_placeholder:
                case room_intro_ch4:
                    exit;
            }
            break;
    }

    if (global.AP_deathlink && !global.AP_deathlink_protected)
    {
        if (instance_exists(obj_archipelago_client) && obj_archipelago_client.AP_isAuthenticated())
        {
            var text = undefined;

            if (global.interact == 2)
            {
                if (scr_have_anycharacter_unlocked())
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
                else
                {
                    text = global.AP_name + " entered a battle without any character.";
                }

            }

            obj_archipelago_client.AP_sendDeathlink(text);
        }
    }

    audio_stop_all();
    snd_play(snd_hurt1);

    if (room_to_goto != room_gameover)
    {
        room_goto(room_to_goto)
    }
    else
    {
        global.screenshot = sprite_create_from_surface(application_surface, 0, 0, __view_get(e__VW.WView, 0), __view_get(e__VW.HView, 0), 0, 0, 0, 0);
        snd_free_all();
        room_goto(room_gameover);
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
