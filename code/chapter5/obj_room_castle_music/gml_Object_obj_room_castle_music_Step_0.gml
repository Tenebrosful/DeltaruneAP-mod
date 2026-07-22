/// PATCH

/// REPLACE
        var haveroom = scr_pocketspace() + scr_inventoryspace();
        
        if (!haveroom)
        {
            scr_speaker("no_name");
            msgsetloc(0, "* Oh^1, miba^1, oh mama^1! No rooms in your pockets!? What's in there!?/", "obj_room_castle_music_slash_Step_0_gml_100_0");
            msgnextloc("* Boys and salesmen!? Oh^1, miba^1, oh mama.../%", "obj_room_castle_music_slash_Step_0_gml_101_0");
        }
        else
        {
            npc_animate = false;
            scr_flag_set(1909, 1);
            snd_play(snd_item);
            msgset(0, scr_itemget_anytype_text(7, "item"));
        }
/// CODE
            npc_animate = false;
            scr_flag_set(1909, 1);
            snd_play(snd_item);
            msgset(0, string("* (You got {0}.)/%", AP_get_location_reward_text(258)));
            AP_sendLocation(258);
/// END