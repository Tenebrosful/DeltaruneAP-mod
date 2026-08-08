/// PATCH

/// AFTER
#if CHAPTER_4
    if (!i_ex(obj_hammer_of_justice_enemy))
    {
        for (i = 0; i < 12; i += 1)
            global.item[i] = tempitem[i][global.charturn];
    }
#else
    for (i = 0; i < 12; i += 1)
        global.item[i] = tempitem[i][global.charturn];
#endif
/// CODE
    AP_proceed_in_battle_waiting_items();
/// END

#if !CHAPTER_5
/// AFTER
    with (obj_smallface)
        instance_destroy();
/// CODE
    for (i = 0; i < 3; i += 1)
    {
        if ((i == 0 && (global.chararmor1[1] == 38 || global.chararmor2[1] == 38) && global.faceaction[0] == 4) || (i == 1 && (global.chararmor1[2] == 38 || global.chararmor2[2] == 38) && global.faceaction[1] == 4) || (i == 2 && (global.chararmor1[3] == 38 || global.chararmor2[3] == 38) && global.faceaction[2] == 4))
        {
            var healnum = round(global.maxhp[i + 1] * 0.16);
            global.charinstance[i].healnum = healnum;
            scr_heal(i, healnum);
            
            with (global.charinstance[i])
            {
                ha = instance_create(x, y, obj_healanim);
                ha.target = id;
                dmgwr = scr_dmgwriter_selfchar();
                
                with (dmgwr)
                {
                    delay = 8;
                    type = 3;
                }
                
                if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
                {
                    with (dmgwr)
                        specialmessage = 3;
                }
                
                dmgwr.damage = healnum;
                tu += 1;
            }
        }
        
        for (iii = 0; iii < 3; iii++)
        {
            with (global.charinstance[i])
                tu--;
        }
    }
/// END
#endif