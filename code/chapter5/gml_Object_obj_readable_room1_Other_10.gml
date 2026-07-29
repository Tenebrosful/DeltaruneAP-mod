/// PATCH

/// AFTER
    msgsetloc(0, "* (Not a good bed.)/%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
}
/// CODE
if (room == room_dw_fcastle_foyer)
{
    if (global.customflags[global.custom_flags_indexes.ch5_talked_about_ycomplist] == 0)
    {
        global.customflags[global.custom_flags_indexes.ch5_talked_about_ycomplist] = 1;
        scr_speaker("flowery");
        msgsetloc(0, "\\E0\\V2* Well^1, look who it is!/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("ralsei", "m");
        
        if (global.customflags[global.custom_flags_indexes.ch5_talked_about_gcomplist] == 1)
            msgnextloc("* What do you want now?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        else
            msgnextloc("* What do you want^1, Flowery?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        
        scr_anyface_next("flowery", 2);
        msgnextloc("\\E2\\Vc* It's something for my sparring partner Yellow./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\EA* You see^1, he's been feeling really down recently./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E9* He always beats himself up over the smallest things./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E3\\Vo* Could you three give me something to let Yellow know it's all right?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E0\\VQ* Maybe something like a list of compliments for him?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("susie", 0);
        msgnextloc("* A \\cYYellow Compliment List\\cW^1, huh?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E1* Well^1, okay./%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    }
    else if (scr_keyitemcheck(1022))
    {
        global.customflags[global.custom_flags_indexes.ch5_used_ycomplist] = 1;
        scr_keyitemremove(1022);
        scr_keyitemremove(4);
        scr_keyitemremove(24);
        scr_keyitemremove(33);
        snd_play(snd_item);
        scr_speaker("flowery");
        msgsetloc(0, "\\E0\\V6* Thanks guys^1! I hope this makes Yellow feel better./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E0\\V2* Ciao!/%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        extflag = "floweryleaveleft";
        
        with (obj_dw_fcastle_foyer)
            instance_destroy(flowerywall);
    }
    else
    {
        scr_speaker("flowery");
        msgsetloc(0, "\\E3\\Vo* Could you three give me something to let Yellow know it's all right?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E0\\VQ* Maybe something like a list of compliments for him?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("susie", 0);
        msgnextloc("* A \\cYYellow Compliment List\\cW^1, huh?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E1* Well^1, okay./%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    }
}

if (room == room_dw_fcastle_cafe)
{
    if (global.customflags[global.custom_flags_indexes.ch5_talked_about_gcomplist] == 0)
    {
        global.customflags[global.custom_flags_indexes.ch5_talked_about_gcomplist] = 1;
        scr_speaker("flowery");
        msgsetloc(0, "\\E0\\V2* Well^1, look who it is!/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        
        if (scr_flag_get(1776) == 1)
        {
            msgnextloc("\\E2\\V6* Did you guys like my vending machine?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
            scr_anyface_next("ralsei", "n");
            msgnextloc("\\En* So those lines WERE just you talking./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
            scr_anyface_next("flowery", 0);
            msgnextloc("\\E0\\V7* No^1, those lines were actually prerecorded./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
            msgnextloc("\\E3\\Vv* You're just that predictable./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
            scr_anyface_next("susie", 0);
            msgnextloc("* He's telling the truth./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
            msgnextloc("\\E1* I looked over^1, and he was just smiling the whole time./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
            msgnextloc("\\E1* No mouth movements./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
            scr_anyface_next("ralsei", "s");
            msgnextloc("\\Es* ...Whatever./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        }
        else
        {
            scr_anyface_next("ralsei", "m");
        }
        
        if (global.customflags[global.custom_flags_indexes.ch5_talked_about_ycomplist] == 1)
            msgnextloc("\\Em* What do you want now^1, Flowery?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        else
            msgnextloc("\\Em* What do you want^1, Flowery?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        
        scr_anyface_next("flowery", 3);
        msgnextloc("\\E3\\Vc* Well^1, it's not for me^1, it's for Green./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("ralsei", "I");
        
        if (global.customflags[global.custom_flags_indexes.ch5_talked_about_ycomplist] == 1)
            msgnextloc("* Oh^1, do they need compliments too?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        else
            msgnextloc("* Oh^1, do they need something?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        
        scr_anyface_next("flowery", 2);
        msgnextloc("\\E2\\V7* Well^1, no^1.&* They already get plently./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E0\\VY* But I think they still deserve more praise!/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E3\\VQ* Could you three give me something showing your appreciation for Green?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("susie", 0);
        msgnextloc("* So like a \\cYGreen Compliment List\\cW?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("* Doesn't sound too bad./%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    }
    else if (scr_keyitemcheck(1023))
    {
        global.customflags[global.custom_flags_indexes.ch5_used_gcomplist] = 1;
        scr_keyitemremove(1023);
        scr_keyitemremove(4);
        scr_keyitemremove(24);
        scr_keyitemremove(33);
        snd_play(snd_item);
        scr_speaker("flowery");
        msgsetloc(0, "\\E0\\V6* Thanks guys^1! I'm sure Green will love it./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E3\\Ve* See you soon./%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        extflag = "floweryleaveright";
        
        with (obj_dw_fcastle_cafe)
            instance_destroy(flowerywall);
    }
    else
    {
        scr_speaker("flowery");
        msgsetloc(0, "\\E3\\VQ* Could you three give me something showing your appreciation for Green?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("susie", 0);
        msgnextloc("* Like a \\cYGreen Compliment List\\cW?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("* Doesn't sound too bad./%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    }
}

if (room == room_dw_fcastle_obscured_bullets)
{
    global.msc = 1500;
    scr_text(global.msc);
}


if (room == room_dw_fcastle_final_save)
{
    scr_miniface_init_flowers();
    scr_speaker("orange");
    msgsetloc(0, "\\m2\t\t* Sigh.../", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    msgnextloc("\\m2\t\t* I'm supposed to be preparing&\t\tfor the final fight against&\t\tyou guys.../", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    scr_anyface_next("susie", 1);
    msgnextloc("\\E1* Then why aren't you?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    
    if (global.MacGuffin_count >= global.AP_macguffin_required[global.chapter - 1] && (global.flag[1846] >= 2 || !global.AP_secret_bosses_mandatory) && (global.AP_current_route != global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS || (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS && AP_all_recruits_acquired())))
    {
        scr_anyface_next("orange", 0);
        msgnextloc("\\m2\t\t* Well^1, Flowery asked me to&\t\tpractice doing Jarona./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* But..^1. I don't know how./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* You guys were right^1, maybe I&\t\tam just weak.../", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        global.customflags[global.custom_flags_indexes.ch5_helped_final_orange] = 1;
        scr_anyface_next("ralsei", 0);
        msgnextloc("* Orange^1, here's some lessons to do^1, erm.../", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_msgfunc(function()
        {
            sprite_index = spr_orange_surprised;
        });
        msgnextloc("\\En* A..^1. \"Jarona.\"/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("orange", 0);
        msgnextloc("\\m2\t\t* What?^1! You guys got this^1...&\t\tfor me?/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* Thank you...^1!&\t\tThank you so much!!!/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_msgfunc(function()
        {
            sprite_index = spr_orange_cry;
        });
        msgnextloc("\\m2\t\t* I'll practice this^1, and show&\t\tyou my awesome moves!/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_msgfunc(function()
        {
            sprite_index = spr_enemy_orange_walk_left;
        });
        msgnextloc("\\m2\t\t* See you guys^1!&\t\tThanks again!!/%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        
        with (obj_dw_fcastle_final_save)
            instance_destroy(orangewall);
    }
    else if (global.flag[1846] < 2 && global.AP_secret_bosses_mandatory)
    {
        scr_anyface_next("orange", 0);
        msgnextloc("\\m2\t\t* Well^1, I haven't seen my big&\t\tsis in a while./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* You three will probably seal&\t\tthe fountain when you beat&\t\tus^1, so.../", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* I just wanna be with her at&\t\tleast one more time before&\t\tthis dream ends./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("ralsei", 7);
        msgnextloc("\\E7* (Kris^1, I feel bad for making fun of Orange earlier...)/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E5* (Maybe we could help her find her sister first?)/%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    }
    else if (global.MacGuffin_count < global.AP_macguffin_required[global.chapter - 1])
    {
        scr_anyface_next("orange", 0);
        msgnextloc("\\m2\t\t* Well^1, Flowery asked me to&\t\tpractice doing Jarona./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* But..^1. I don't know how./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* You guys were right^1, maybe I&\t\tam just weak.../", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        scr_anyface_next("ralsei", 7);
        msgnextloc("\\E7* (Kris^1, I feel bad for making fun of Orange earlier...)/", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\E5* (Maybe we could find some \\cYJarona Lessons\\cW to help her learn?)/%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    }
    else if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS && !AP_all_recruits_acquired())
    {
        scr_anyface_next("orange", 0);
        msgnextloc("\\m2\t\t* Tenebrosful have no idea what to write./", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
        msgnextloc("\\m2\t\t* If you see that, that's because theemeraldsword85 didn't changed it./%", "obj_readable_room1_slash_Other_10_gml_1324_0_b");
    }
}
///END