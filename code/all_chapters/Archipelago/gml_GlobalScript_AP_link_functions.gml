/// FUNCTIONS

function AP_handle_Damagelink()
{
    if (global.darkzone == 0)
        exit;

    global.AP_damagelink_protected = true;
    possible_targets = []

    for (i = 0; i < 3; i++)
    {
        if (global.char[i] != 0 && global.hp[global.char[i]] > 0)
            array_push(possible_targets, i)
    }

    if (array_length(possible_targets) == 0)
    {
        global.AP_damagelink_protected = false;
        exit;
    }
    
    target = possible_targets[irandom(array_length(possible_targets) - 1)];
    damage = global.AP_damagelink_infos.damage_points;

    global.inv = -1

    if (instance_exists(obj_battlecontroller))
    {
        scr_damage();
        snd_play(snd_damage);
    }
    else
    {
        global.hp[global.char[target]] -= damage;
        snd_play(snd_hurt1);

        gameover = true;

        for (var i = 0; i < 3; i++)
        {
            if (global.char[i] != 0 && global.hp[global.char[i]] > 0)
            {
                gameover = false;
                break;
            }
        }

        if (gameover)
        {
            global.AP_damagelink_protected = false;
            scr_gameover();
        }
    }
    
    global.AP_damagelink_protected = false;
}

function AP_handle_DeathLink()
{   
    if (global.darkzone == 0)
        exit;

    global.AP_deathlink_protected = true;
    if (global.chapter == 3 && (room == room_board_1 || room == room_board_2 || room == room_board_3))
    {
        if (i_ex(obj_battlecontroller))
        {
            snd_play(snd_hurt1);
            global.hp[1] = 0;
            global.hp[2] = 0;
            global.hp[3] = 0;
            
            with (obj_battlecontroller)
            {
                with (obj_heroparent)
                    sprite_index = defeatsprite;
                
                global.specialbattle = 3;
                boardend = 1;
                alarm[11] = 1;
                
                with (obj_dmgwriter)
                    instance_destroy();
            }
        }
        else
        {
            timer = 0;
        }
    }
    else
    {
        scr_gameover();
    }
    global.AP_deathlink_protected = false;
}