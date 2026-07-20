/// PATCH

/// REPLACE
        var itemgetstring = scr_itemget_anytype_text(34, "armor");
        scr_speaker("no_name");
        msgsetsubloc(0, "* (Where once was a chest^1, you found \\cY~1\\cW.)/", itemname, "obj_dw_cliff_netskieclimb_behind_slash_Step_0_gml_34_0");
/// CODE
        t_itemid = 306;
        var itemgetstring = scr_itemget_anytype_text(306, "check");
        scr_speaker("no_name");
        msgsetsubloc(0, "* (Where once was a chest^1, you found {0}.)/", AP_get_location_reward_text(t_itemid), "obj_dw_cliff_netskieclimb_behind_slash_Step_0_gml_34_0");
/// END