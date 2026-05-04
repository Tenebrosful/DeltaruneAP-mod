/// PATCH

/// REPLACE
                msgnextloc("* As promised^1, here is your reward!/", "obj_npc_dojo_slash_Step_0_gml_46_0");
                scr_itemget_anytype(dojoPrizeValue, dojoPrizeType);
/// CODE
                msgnextloc("* As promised^1, here is your reward!/", "obj_npc_dojo_slash_Step_0_gml_46_0");
/// END

/// REPLACE
                    msgnextsubloc("* (You received ~1!)/%", dojoPrizeName, "obj_npc_dojo_slash_Step_0_gml_51_0");
/// CODE
                    msgnextloc(string("* (You received {0})/%", AP_get_location_reward_text(dojoPrizeType)), "obj_npc_dojo_slash_Step_0_gml_51_0");
                    AP_sendLocation(dojoPrizeType);
/// END

/// REPLACE
                msgnextloc("* You received Joe's Life Savings ($1)!/%", "obj_npc_dojo_slash_Step_0_gml_85_0");
                scr_itemget_anytype(dojoPrizeValue, dojoPrizeType);
/// CODE
                msgnextloc("* You sent a Check to your Multiworld./%", "obj_npc_dojo_slash_Step_0_gml_85_0");
                AP_sendLocation(dojoPrizeType);
/// END