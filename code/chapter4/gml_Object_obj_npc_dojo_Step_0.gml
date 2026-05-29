/// PATCH

/// REPLACE
                scr_itemget_anytype(dojoPrizeValue, dojoPrizeType);
/// CODE
/// END

/// REPLACE
                    msgnextsubloc("* (You received ~1!)/%", dojoPrizeName, "obj_npc_dojo_slash_Step_0_gml_51_0");
/// CODE
                    msgnextloc(string("* You got {0}./%", AP_get_location_reward_text(dojoPrizeType)), "obj_npc_dojo_slash_Step_0_gml_51_0");
                    AP_sendLocation(dojoPrizeType);
/// END