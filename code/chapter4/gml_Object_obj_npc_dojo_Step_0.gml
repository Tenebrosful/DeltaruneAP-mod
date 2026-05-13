/// PATCH

/// REPLACE
                scr_itemget_anytype(dojoPrizeValue, dojoPrizeType);
/// CODE
/// END

/// REPLACE
                    msgnextsubloc("* (You received ~1!)/%", dojoPrizeName, "obj_npc_dojo_slash_Step_0_gml_51_0");
/// CODE
                    msgnextloc("* You sent a Check to your Multiworld./%", "obj_npc_dojo_slash_Step_0_gml_51_0");
                    scr_checkspot(dojoPrizeType);
/// END