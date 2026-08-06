/// PATCH

/// REPLACE
#if CHAPTER_4
                    with (global.charinstance[target])
                    {
                        image_blend = c_white;
                        darkify = 0;
                    }
#else
                with (global.charinstance[target])
                {
                    image_blend = c_white;
                    darkify = 0;
                }
#endif
/// CODE
                if (target < 3)
                {
                    with (global.charinstance[target])
                    {
                        image_blend = c_white;
                        darkify = 0;
                    }
                }
/// END

/// REPLACE
#if CHAPTER_3 || CHAPTER_4
            with (global.charinstance[target])
            {
                image_blend = c_white;
                darkify = 0;
            }
#else
        with (global.charinstance[target])
        {
            hurt = 1;
            hurttimer = 0;
        }
#endif
/// CODE
        if (target < 3)
        {
            with (global.charinstance[target])
            {
                hurt = 1;
                hurttimer = 0;
            }
        }
/// END

#if CHAPTER_4
/// REPLACE
                if (i_ex(obj_climb_kris))
                    skipthis = true;
/// CODE
                if (i_ex(obj_climb_kris) || room == room_dw_church_staircase)
                    skipthis = true;
/// END

/// REPLACE
            if (__targx == -1)
            {
                __targx = global.charinstance[target].x;
                __targy = (global.charinstance[target].y + global.charinstance[target].myheight) - 24;
            }
/// CODE
            if (__targx == -1 && target < 3)
            {
                __targx = global.charinstance[target].x;
                __targy = (global.charinstance[target].y + global.charinstance[target].myheight) - 24;
            }
/// END

/// REPLACE
        if (!instance_exists(obj_shake))
            instance_create(0, 0, obj_shake);
        
        with (global.charinstance[target])
        {
            hurt = 1;
            hurttimer = 0;
        }
/// CODE
        if (!instance_exists(obj_shake))
            instance_create(0, 0, obj_shake);
        
        if (target < 3)
        {
            with (global.charinstance[target])
            {
                hurt = 1;
                hurttimer = 0;
            }
        }
/// END
#endif

#if CHAPTER_1
/// AFTER
    if (global.inv < 0 && debug_inv == 0)
    {
/// CODE
        skip_to_gameover = true;
        
        for (var i = 0; i < 3; i++)
        {
            if (global.char[i] != 0 && global.hp[global.char[i]] > 0)
            {
                skip_to_gameover = false;
                break;
            }
        }
        
        if (skip_to_gameover)
        {
            scr_gameover();
            exit;
        }
/// END
#endif

#if !CHAPTER_5
/// BEFORE
    }
}
/// CODE

        if (global.chararmor1[1] == 35 || global.chararmor2[1] == 35 || global.chararmor1[2] == 35 || global.chararmor2[2] == 35 || global.chararmor1[3] == 35 || global.chararmor2[3] == 35)
        {
            global.inv = global.invc * 40 * 1.2;
            
            if (global.chapter == 5 && i_ex(obj_pink_enemy) && global.flag[1914] == 2)
                global.inv = global.invc * 40 * 0.7;
        }
/// END

#if CHAPTER_3
/// AFTER
                if (global.chapter == 3 && i_ex(obj_knight_enemy) && obj_knight_enemy.myattackchoice == 2 && (obj_knight_enemy.difficulty == 1 || obj_knight_enemy.difficulty == 3))
                {
                    tdamage = round(tdamage * 0.66);
                    hpdiff = tdamage;
                }
                
                global.hp[chartarget] -= tdamage;
/// CODE
                obj_archipelago_client.AP_sendDamagelink(tdamage)
/// END
#elsif CHAPTER_4
/// AFTER
                if (global.chapter == 4 && i_ex(obj_hammer_of_justice_enemy) && hpdiff < 5)
                    hpdiff = 5;
                
                global.hp[chartarget] -= tdamage;
/// CODE
                obj_archipelago_client.AP_sendDamagelink(tdamage)
/// END
#else
/// AFTER
            else
            {
                global.hp[chartarget] -= tdamage;
/// CODE
                obj_archipelago_client.AP_sendDamagelink(tdamage)
/// END
#endif

#if CHAPTER_1
/// REPLACE
                    if (global.charaction[hpi] == 10)
                        global.hp[chartarget] -= ceil(tdamage / 2);
                    else
                        global.hp[chartarget] -= tdamage;
/// CODE
                    if (global.charaction[hpi] == 10)
                    {
                        global.hp[chartarget] -= ceil(tdamage / 2);
                        obj_archipelago_client.AP_sendDamagelink(ceil(tdamage / 2))
                    }
                    else
                    {
                        global.hp[chartarget] -= tdamage;
                        obj_archipelago_client.AP_sendDamagelink(tdamage)
                    }
/// END
#else
/// REPLACE
                    if (global.charaction[hpi] == 10)
                        global.hp[chartarget] -= ceil((3 * tdamage) / 4);
                    else
                        global.hp[chartarget] -= tdamage;
/// CODE
                    if (global.charaction[hpi] == 10)
                    {
                        global.hp[chartarget] -= ceil((3 * tdamage) / 4);
                        obj_archipelago_client.AP_sendDamagelink(ceil((3 * tdamage) / 4))
                    }
                    else
                    {
                        global.hp[chartarget] -= tdamage;
                        obj_archipelago_client.AP_sendDamagelink(tdamage)
                    }
/// END
#endif