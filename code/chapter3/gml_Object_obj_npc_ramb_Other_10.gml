/// PATCH

/// REPLACE
        rank_rewards[0][1] = "armor";
        rank_rewards[0][2] = 3;
        rank_rewards[1][0] = 4;
        rank_rewards[1][1] = "armor";
        rank_rewards[1][2] = 3;
        rank_rewards[2][0] = 3;
        rank_rewards[2][1] = "item";
        rank_rewards[2][2] = 2;
        rank_rewards[3][0] = 2;
        rank_rewards[3][1] = "item";
        rank_rewards[3][2] = 2;
        rank_rewards[4][0] = 1;
        rank_rewards[4][1] = "item";
        rank_rewards[4][2] = 34;
/// CODE
        rank_rewards[0][1] = "check";
        rank_rewards[0][2] = 3;
        rank_rewards[1][0] = 4;
        rank_rewards[1][1] = "check";
        rank_rewards[1][2] = 3;
        rank_rewards[2][0] = 3;
        rank_rewards[2][1] = "check";
        rank_rewards[2][2] = 2;
        rank_rewards[3][0] = 2;
        rank_rewards[3][1] = "check";
        rank_rewards[3][2] = 2;
        rank_rewards[4][0] = 1;
        rank_rewards[4][1] = "check";
        rank_rewards[4][2] = 34;
        t_itemid = 128;
/// END

/// REPLACE
            board_flag = 1174;
            rank_rewards[0][0] = 5;
            rank_rewards[0][1] = "armor";
            rank_rewards[0][2] = 4;
            rank_rewards[1][0] = 4;
            rank_rewards[1][1] = "armor";
            rank_rewards[1][2] = 4;
            rank_rewards[2][0] = 3;
            rank_rewards[2][1] = "item";
            rank_rewards[2][2] = 28;
            rank_rewards[3][0] = 2;
            rank_rewards[3][1] = "item";
            rank_rewards[3][2] = 28;
            rank_rewards[4][0] = 1;
            rank_rewards[4][1] = "armor";
            rank_rewards[4][2] = 24;
/// CODE
            board_flag = 1174;
            rank_rewards[0][0] = 5;
            rank_rewards[0][1] = "check";
            rank_rewards[0][2] = 4;
            rank_rewards[1][0] = 4;
            rank_rewards[1][1] = "check";
            rank_rewards[1][2] = 4;
            rank_rewards[2][0] = 3;
            rank_rewards[2][1] = "check";
            rank_rewards[2][2] = 28;
            rank_rewards[3][0] = 2;
            rank_rewards[3][1] = "check";
            rank_rewards[3][2] = 28;
            rank_rewards[4][0] = 1;
            rank_rewards[4][1] = "check";
            rank_rewards[4][2] = 24;
            t_itemid = 147;
/// END

/// AFTER
                scr_speaker("no_name");
                msgsetloc(0, "\\M1* Kris^1, games are supposed to be fun. Don't let it feel like a job^1, alright?/%", "obj_npc_ramb_slash_Other_10_gml_17_0");
/// CODE
                
                if (global.plot >= 250)
                {
                    scr_speaker("no_name");
                    msgsetloc(0, "\\M1* Kris^1, luv^1! Managed to escape Tenna^1, eh?/", "obj_npc_ramb_slash_Other_10_gml_204_0");
                    msgnextloc("\\M4* Best not stay here long then^1, I'm afraid./", "obj_npc_ramb_slash_Other_10_gml_71_0");
                    msgnextloc("* Never know when he'll poke his nose around.../%", "obj_npc_ramb_slash_Other_10_gml_71_0");
                }
/// END

/// REPLACE
    else if (global.plot < 205)
/// CODE
    else if (global.plot < 280)
/// END

/// REPLACE
        if (global.plot >= 150 && global.plot < 230)
/// CODE
        if (global.plot >= 150 && global.plot < 280)
/// END

/// REPLACE
                var sentence_end = prev_s_rank ? "/%" : "/";
/// CODE
                var sentence_end = prev_s_rank ? "/%" : "/%";
/// END

/// REPLACE
                msgnextsubloc("\\M7* Blast it. Maybe you missed something from the first stage...?~1", sentence_end, "obj_npc_ramb_slash_Other_10_gml_202_0");
                
                if (!prev_s_rank)
                    msgnextloc("\\M0* If only you'd gotten S-Rank earlier.../%", "obj_npc_ramb_slash_Other_10_gml_206_0");
/// CODE
                msgnextsubloc("\\M7* Blast it. Maybe what you're looking for is somewhere else...?~1", sentence_end, "obj_npc_ramb_slash_Other_10_gml_202_0");
/// END