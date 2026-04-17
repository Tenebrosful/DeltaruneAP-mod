/// PATCH

/// REPLACE
        case 111:
            if (global.choice == 0)
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_111_0");
                global.flag[100] = 1;
                scr_itemget(3);
                
                with (obj_readable_room1)
                {
                    with (shine)
                        instance_destroy();
                }
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_118_0");
            }
            
            break;
/// CODE
        case 111:
            if (global.choice == 0)
            {
                global.msg[0] = "* You got a Check./";
                global.msg[1] = "* You sent the Check to your Multiworld./%";
                global.flag[100] = 1;
                scr_checkspot(1);
                
                with (obj_readable_room1)
                {
                    if ((x == 240 && y == 180) || (x == 300 && y == 240))
                    {
                        with (shine)
                            instance_destroy();
                    }
                }
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_118_0");
            }
            
            break;
/// END

/// REPLACE
                global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_313_0");
/// CODE
                global.msg[6] = "* (The Manual turned into a check.)/";
                global.msg[7] = "* (You sent the Check to your Multiworld.)/%";
/// END

/// REPLACE
                scr_itemget(1);
                
                if (noroom == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_387_0");
/// CODE
                scr_checkspot(2 + global.flag[101]);
                
                if (noroom == 0)
                {
                    global.msg[0] = "* (You got a Check.)/";
                    global.msg[1] = "* (You sent the Check to your Multiworld.)/%";
/// END

/// REPLACE
                scr_itemget(1);
                
                if (noroom == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_433_0");
/// CODE
                scr_checkspot(4 + global.flag[102]);
                
                if (noroom == 0)
                {
                    global.msg[0] = "* (You got a Check.)/";
                    global.msg[1] = "* (You sent the Check to your Multiworld.)/%";
/// END

/// REPLACE
                scr_keyitemget(3);
                
                if (noroom == 0)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_472_0");
/// CODE
                scr_checkspot(23);
                
                if (noroom == 0)
                {
                    global.msg[0] = "* (The Broken Cake turned into a check.)/";
                    global.msg[0] = "* (You sent the Check to your Multiworld.)/%";
/// END

/// REPLACE
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1693_0");
/// CODE
                global.msg[0] = "* (Regardless of whether or not the moss is consumed, the cycle continues...)/%";
/// END

/// REPLACE
                global.hp[1] = global.maxhp[1];
                snd_play(snd_swallow);
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1702_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1703_0");
                global.flag[106] = 1;
/// CODE
                global.msg[0] = "* (As your hands touched it^1, the moss turned into a check.)/";
                global.msg[1] = "* (You sent the Check to your Multiworld.)/%";
                global.flag[106] = 1;
                scr_checkspot(35);
/// END

/// REPLACE
                scr_armorget(5);
                
                if (noroom == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1733_0");
                }
                else
                {
                    with (obj_npc_sign)
                        image_index = 1;
                    
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1738_0");
/// CODE
                scr_checkspot(30);
                
                if (noroom == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1733_0");
                }
                else
                {
                    with (obj_npc_sign)
                        image_index = 1;
                    
                    global.msg[0] = "* (You sent a Check to your Multiworld.)/%";
/// END

/// REPLACE
                if (scr_keyitemcheck(4) && scr_keyitemcheck(6) && scr_keyitemcheck(7))
                    which = 3;
                
                if (scr_keyitemcheck(3) && which == 0)
                {
                    which = 1;
                    scr_itemget(6);
/// CODE
                if (global.customflags[6] == 3 && scr_keyitemcheck(4))
                    which = 3;
                
                if (scr_keyitemcheck(3) && which == 0)
                {
                    which = 1;
                    scr_checkspot(6);
/// END

/// REPLACE
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1853_0");
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1854_0");
            global.choicemsg[2] = " ";
            global.choicemsg[3] = " ";
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1857_0");
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1858_0");
            global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1859_0");
            global.msg[3] = " ";
            
            if (scr_itemcheck(13))
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1863_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1864_0");
/// CODE
            if (global.customflags[7] == 1)
            {
                global.msg[0] = "* Thanks for buying, I guess./%";
            }
            else
            {
                global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1853_0");
                global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1854_0");
                global.choicemsg[2] = " ";
                global.choicemsg[3] = " ";
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1857_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1858_0");
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1859_0");
                global.msg[3] = " ";
                scr_hintspot(7);
/// END

/// REPLACE
                    scr_itemget(13);
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1877_0");
/// CODE
                    scr_checkspot(7);
                    global.customflags[7] = 1;
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.msg[0] = "* Thanks^1, I guess^1.&* (A Check was sent to your Multiworld.)/%";
/// END

/// REPLACE
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1900_0");
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1901_0");
            global.choicemsg[2] = " ";
            global.choicemsg[3] = " ";
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1904_0");
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1905_0");
            global.msg[2] = " ";
            break;
/// CODE
            if (global.customflags[8] == 1)
            {
                global.msg[0] = "* (Hathy seems grateful of your purchase.)/%";
                break;
            }
            else
            {
                global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1900_0");
                global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1901_0");
                global.choicemsg[2] = " ";
                global.choicemsg[3] = " ";
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1904_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1905_0");
                global.msg[2] = " ";
                scr_hintspot(8);
                break;
            }
/// END

/// REPLACE
                    scr_itemget(12);
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1918_0");
/// CODE
                    scr_checkspot(8);
                    global.customflags[8] = 1;
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.msg[0] = "* (A Check was sent to your Multiworld.)/%";
/// END

/// AFTER
            global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1950_0");
            global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1951_0");
            global.msg[7] = " ";
/// CODE
            scr_hintspot(9);
/// END

/// REPLACE
        case 331:
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_itemget(9);
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.fc = 1;
                        global.fe = 1;
                        global.typer = 30;
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1968_0");
                        scr_noface(1);
                        global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1970_0");
/// CODE
            scr_hintspot(9);
            break;
        
        case 331:
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_checkspot(9);
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.fc = 1;
                        global.fe = 1;
                        global.typer = 30;
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1968_0");
                        scr_noface(1);
                        global.msg[2] = "* (A Check was sent to your Multiworld.)/";
/// END

/// REPLACE
            scr_keyitemremove(4);
            scr_keyitemremove(5);
            scr_keyitemremove(6);
            scr_keyitemremove(7);
/// CODE
            scr_keyitemremove(5);
/// END

/// REPLACE
                scr_itemget(13);
/// CODE
                scr_checkspot(10);
/// END

/// REPLACE
        case 460:
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3083_0");
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3084_0");
            global.choicemsg[2] = " ";
            global.choicemsg[3] = " ";
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3087_0");
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3088_0");
            
            if (global.plot >= 75)
            {
                global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3091_0");
                global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3092_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3093_0");
            }
            
            if (global.plot >= 154)
            {
                global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3097_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3098_0");
            }
            
            break;
/// CODE
        case 460:
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3083_0");
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3084_0");
            global.choicemsg[2] = "";
            global.choicemsg[3] = "";
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3087_0");
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3098_0");
            
            if (global.customflags[5] == 1)
                global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3092_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3093_0");
            
            if (global.plot >= 154)
            {
                global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3097_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3098_0");
            }
            
            break;
/// END

/// REPLACE
                scr_itemremove(6);
                scr_itemget(7);
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3151_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3152_0");
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3153_0");
                global.writersnd[0] = snd_item;
                global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3155_0");
/// CODE
                scr_keyitemremove(1004);
                scr_checkspot(11);
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3151_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3152_0");
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3153_0");
                global.writersnd[0] = snd_item;
                global.msg[3] = "* (You traded the TopCake for a Check.)/";
/// END

/// REPLACE
            
            if (scr_itemcheck(7))
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3173_0");
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3177_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3178_0");
            }
            
/// CODE
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3173_0");
/// END

/// REPLACE
                scr_itemget(7);
/// CODE
                
/// END

/// REPLACE
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3214_0");
                snd_play(snd_egg);
                scr_keyitemget(2);
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3220_0");
            }
            
            break;
/// CODE
                global.msg[0] = "* (He sent a Check to your Multiworld.)/%";
                snd_play(snd_egg);
                scr_checkspot(24);
            }
            else
            {
                global.msg[0] = "* (Then he needn't be here.)/";
                global.msg[1] = "\\s0* (It seems you won't be able to get this check anymore... )/%";
            }
            
            break;
/// END

/// REPLACE
enum UnknownEnum
{
    Value_0,
    Value_9 = 9
}
/// CODE
enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_9 = 9
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
/// END