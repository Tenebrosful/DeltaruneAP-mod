/// PATCH

/// REPLACE
            if (!scr_havechar("susie") && scr_recruited_all_previous())
/// CODE
            if (!(global.maxhp[1] > 0 && global.maxhp[2] > 0 && global.maxhp[3] > 0) && scr_recruited_all_previous())
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Boss^1! I got a fight for you...!/", "scr_text_slash_scr_text_gml_7848_0");
                msgnextloc("* ..^1. but^1, you gotta be a trio./", "scr_text_slash_scr_text_gml_7849_0");
                msgnextloc("* Make sure everyone's unlocked first!/%", "scr_text_slash_scr_text_gml_7850_0_b");
            }
            else if (!scr_havechar("susie") && scr_recruited_all_previous())
/// END

/// REPLACE
            scr_speaker("lancer");
            msgsetloc(0, "\\EE* LANCER COOKIEs from organic free-range LANCERs^1! Free!/", "scr_text_slash_scr_text_gml_5070_0_b");
            msgnext("\\C2 ");
            break;
        
        case 1104:
            if (global.choice == 0)
            {
                if (scr_itemcheck_inventory_and_pocket(9))
                {
                    scr_speaker("lancer");
                    msgsetloc(0, "\\ED* You already tookie a cookie!/", "scr_text_slash_scr_text_gml_5156_0");
                    msgnextloc("\\ED* Wait^1! I'm still regenerating from the last one./%", "scr_text_slash_scr_text_gml_5157_0");
                }
                else
                {
                    var itemgetstring = scr_itemget_anytype_text(9, "item");
                    
                    if (noroom == 0)
                    {
                        scr_speaker("lancer");
                        msgsetloc(0, "\\EE* I now pronounce you..^1. cookie and wife./", "scr_text_slash_scr_text_gml_5165_0");
                        scr_anyface_next("no_name", 0);
                        msgnext(itemgetstring);
                    }
                    else
                    {
                        scr_speaker("lancer");
                        msgsetloc(0, "\\ED* No room^1! Your pockets are full of un-cookie./", "scr_text_slash_scr_text_gml_5172_0");
                        scr_anyface_next("susie", "P");
                        msgnextloc("\\EP* The hell'd you let that happen^1, Kris?/%", "scr_text_slash_scr_text_gml_5174_0");
                    }
                }
            }
/// CODE
            scr_speaker("lancer");
            msgsetloc(0, "\\E0* Oh^1, do you want a LANCER COOKIE for your sugarplum Noelle?/", "scr_text_slash_scr_text_gml_5070_0_b");
            msgnextloc("\\E3* Good thing I know a guy who makes them!/", "scr_text_slash_scr_text_gml_5157_0");
            msgnext("\\C2 ");
            break;
        
        case 1104:
            if (global.choice == 0)
            {
                if (scr_itemcheck_inventory_and_pocket(9))
                {
                    scr_speaker("lancer");
                    msgsetloc(0, "\\E6* You already tookie a cookie!/", "scr_text_slash_scr_text_gml_5156_0");
                    msgnextloc("\\E4* Wait^1! I'm still regenerating from the last one./%", "scr_text_slash_scr_text_gml_5157_0");
                }
                else
                {
                    var itemgetstring = scr_itemget_anytype_text(9, "item");
                    
                    if (noroom == 0)
                    {
                        scr_speaker("lancer");
                        msgsetloc(0, "\\E2* I now pronounce you..^1. cookie and wife./", "scr_text_slash_scr_text_gml_5165_0");
                        scr_anyface_next("no_name", 0);
                        msgnext(itemgetstring);
                    }
                    else
                    {
                        scr_speaker("lancer");
                        msgsetloc(0, "\\E6* No room^1! Your pockets are full of un-cookie./", "scr_text_slash_scr_text_gml_5172_0");
                        scr_anyface_next("susie", "P");
                        msgnextloc("\\EP* The hell'd you let that happen^1, Kris?/%", "scr_text_slash_scr_text_gml_5174_0");
                    }
                }
            }
            
            if (global.choice == 1)
            {
                scr_speaker("lancer");
                msgsetloc(0, "\\E1* Even if you get stronger^1, Lancer Cookies never falter!/", "scr_text_slash_scr_text_gml_5182_0");
                msgnextloc("\\E3* Always reliable^1, they will heal you in times of need!/", "scr_text_slash_scr_text_gml_5183_0");
                scr_anyface_next("ralsei", "K");
                msgnextloc("\\EK* (Maybe if you need to be healed 1 HP...)/%", "scr_text_slash_scr_text_gml_5185_0");
            }
/// END