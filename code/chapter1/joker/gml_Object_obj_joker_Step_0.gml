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