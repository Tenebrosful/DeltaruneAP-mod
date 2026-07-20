/// PATCH

/// REPLACE
            global.flag[1411] += 50;
            global.flag[1832] = 1;
            snd_play(snd_locker);
            marker.image_index = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (You got \\cY50 Flowery Dollars\\cW.)/", "obj_dw_garden_flowerygardening_slash_Step_0_gml_667_0");
            scr_anyface_next("ralsei", "l");
            msgnextloc("\\El * We don't need those.", "obj_dw_garden_flowerygardening_slash_Step_0_gml_669_0");
/// CODE
            AP_sendLocation(281);
            global.flag[1832] = 1;
            snd_play(snd_locker);
            marker.image_index = 1;
            scr_speaker("no_name");
            msgsetloc(0, string("* (You got {0}.)/", AP_get_location_reward_text(281)));
            scr_anyface_next("ralsei", "l");
            msgnextloc("\\El * We don't need this.", "obj_dw_garden_flowerygardening_slash_Step_0_gml_669_0");
/// END