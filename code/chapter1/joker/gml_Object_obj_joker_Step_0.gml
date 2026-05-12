/// PATCH

/// AFTER
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_314_0");
            star = choose(0, 1, 2);
/// CODE
            spell = 0;
/// END

/// AFTER
                tired = 1;
/// CODE
                scr_monster_make_tired(myself);
/// END

/// REPLACE
        if (hypnosiscounter >= 9)
        {
            txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_387_0");
            global.monsterstatus[myself] = 1;
        }
        
        pirouette = chaosdance;
/// CODE
        if (hypnosiscounter >= 9)
        {
            txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_387_0");
            scr_monster_make_tired(myself);
        }
        
        pirouette = chaosdance;
/// END

/// REPLACE
        if (hypnosiscounter >= 9)
        {
            txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_406_0");
            global.monsterstatus[myself] = 1;
        }
        
        global.msg[0] = txtpart1 + txtpart2 + txtpart3 + scr_84_get_lang_string("obj_joker_slash_Step_0_gml_407_0");
/// CODE
        if (hypnosiscounter >= 9)
        {
            txtpart3 = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_406_0");
            scr_monster_make_tired(myself);
        }
        
        global.msg[0] = txtpart1 + txtpart2 + txtpart3 + scr_84_get_lang_string("obj_joker_slash_Step_0_gml_407_0");
/// END

/// REPLACE
        if (chaosdance == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_320_0"); // * Everyone's HP got jumbled up!/%
            swap1 = 1;
            swap2 = 1;
            swap1 = choose(2, 3);
            
            if (swap1 == 2)
                swap2 = 3;
            
            if (swap1 == 3)
                swap2 = 2;
            
            for (i = 0; i < 4; i += 1)
            {
                remhp[i] = global.hp[i];
                curmaxhp[i] = global.maxhp[i];
            }
            
            global.maxhp[1] = curmaxhp[swap1];
            global.maxhp[swap1] = curmaxhp[swap2];
            global.maxhp[swap2] = curmaxhp[1];
            global.hp[1] = remhp[swap1];
            global.hp[swap1] = remhp[swap2];
            global.hp[swap2] = remhp[1];
            remhpcolor[0] = obj_battlecontroller.hpcolor[0];
            remhpcolor[1] = obj_battlecontroller.hpcolor[1];
            remhpcolor[2] = obj_battlecontroller.hpcolor[2];
            obj_battlecontroller.hpcolor[0] = remhpcolor[swap1 - 1];
            obj_battlecontroller.hpcolor[swap1 - 1] = remhpcolor[swap2 - 1];
            obj_battlecontroller.hpcolor[swap2 - 1] = remhpcolor[0];
            
            for (i = 1; i <= 3; i += 1)
            {
                if (global.hp[i] < 1)
                {
                    global.hp[1] += floor(global.hp[i] / 3);
                    global.hp[2] += floor(global.hp[i] / 3);
                    global.hp[3] += floor(global.hp[i] / 3);
                    global.hp[i] = 1;
                }
            }
            
            if (global.hp[1] < 1)
                global.hp[1] = 1;
            
            if (global.hp[2] < 1)
                global.hp[2] = 1;
            
            if (global.hp[3] < 1)
                global.hp[3] = 1;
            
            scr_revive(0);
            scr_revive(1);
            scr_revive(2);
            snd_play(snd_weirdeffect);
        }
/// CODE
        if (chaosdance == 6)
        {
            global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_320_0"); // * Everyone's HP got jumbled up!/%
            swap1 = 1;
            swap2 = 1;
            swap1 = choose(2, 3);
            
            if (swap1 == 2)
                swap2 = 3;
            
            if (swap1 == 3)
                swap2 = 2;
            
            for (i = 0; i < 4; i += 1)
            {
                remhp[i] = global.hp[i];
                curmaxhp[i] = global.maxhp[i];
            }
            
            global.maxhp[1] = curmaxhp[swap1];
            global.maxhp[swap1] = curmaxhp[swap2];
            global.maxhp[swap2] = curmaxhp[1];
            global.hp[1] = remhp[swap1];
            global.hp[swap1] = remhp[swap2];
            global.hp[swap2] = remhp[1];
            remhpcolor[0] = obj_battlecontroller.hpcolor[0];
            remhpcolor[1] = obj_battlecontroller.hpcolor[1];
            remhpcolor[2] = obj_battlecontroller.hpcolor[2];
            obj_battlecontroller.hpcolor[0] = remhpcolor[swap1 - 1];
            obj_battlecontroller.hpcolor[swap1 - 1] = remhpcolor[swap2 - 1];
            obj_battlecontroller.hpcolor[swap2 - 1] = remhpcolor[0];
            
            if (global.maxhp[1] < 0 || global.maxhp[2] < 0 || global.maxhp[3] < 0)
            {
                if (global.hp[1] > 0)
                    scr_revive(0);
                
                if (global.hp[2] > 0)
                    scr_revive(1);
                
                if (global.hp[3] > 0)
                    scr_revive(2);
            }
            else
            {
                for (i = 1; i <= 3; i += 1)
                {
                    if (global.hp[i] < 1)
                    {
                        global.hp[1] += floor(global.hp[i] / 3);
                        global.hp[2] += floor(global.hp[i] / 3);
                        global.hp[3] += floor(global.hp[i] / 3);
                        global.hp[i] = 1;
                    }
                }
                
                if (global.hp[1] < 1)
                    global.hp[1] = 1;
                
                if (global.hp[2] < 1)
                    global.hp[2] = 1;
                
                if (global.hp[3] < 1)
                    global.hp[3] = 1;
                
                scr_revive(0);
                scr_revive(1);
                scr_revive(2);
            }
            
            snd_play(snd_weirdeffect);
        }
/// END