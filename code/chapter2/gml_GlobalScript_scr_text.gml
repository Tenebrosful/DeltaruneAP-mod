/// PATCH

/// REPLACE
            global.msg[1] = stringsetloc("* (If you go back to sleep^1, \\cYyou may miss a lot of important things\\cW.)/", "scr_text_slash_scr_text_gml_2665_0_b");
/// CODE
            global.msg[1] = stringsetloc("*\\s0 (If you go back to sleep^1, \\cYyou will be able to do stuff later\\cW.^3)/", "scr_text_slash_scr_text_gml_2665_0_b");
/// END

/// REPLACE
        case 601:
            global.flag[910] = 2;
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* (You received an Egg.)/%", "scr_text_slash_scr_text_gml_3215_0");
                snd_play(snd_egg);
                scr_keyitemget(2);
            }
            else
            {
                global.msg[0] = stringsetloc("* (Then he needn't be here.)/%", "scr_text_slash_scr_text_gml_3221_0");
            }
            
            break;
/// CODE
        case 601:
            if (global.choice == 0)
                global.msg[0] = stringsetloc("* (You did not recieve an Egg.^1)&* (Loser!)/%", "scr_text_slash_scr_text_gml_3215_0");
            else
                global.msg[0] = stringsetloc("* (Then he needn't be here.)/%", "scr_text_slash_scr_text_gml_3221_0");

            break;
/// END

/// AFTER
            msgnextloc("* We're selling this for 75`% off! Only 300 Dark Dollars!/", "scr_text_slash_scr_text_gml_4487_0");
            msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4489_0");
/// CODE
            scr_hintspot(65);
/// END

/// REPLACE
                    scr_armorget(16);
                    
                    if (noroom == 0)
                    {
                        global.gold -= 300;
                        snd_play(snd_equip);
                        
                        if (instance_exists(obj_npc_sign))
                            instance_destroy(obj_npc_sign);
                        
                        scr_speaker("no_name");
                        msgsetloc(0, "* Great doing business with you!!/", "scr_text_slash_scr_text_gml_4517_0");
                        msgnextloc("* (It was added to your ARMORS.)/%", "scr_text_slash_scr_text_gml_4534_0_b");
                    }
/// CODE
                    scr_checkspot(65);
                    global.customflags[12] = 1;
                    
                    if (noroom == 0)
                    {
                        global.gold -= 300;
                        snd_play(snd_equip);
                        
                        if (instance_exists(obj_npc_sign))
                            instance_destroy(obj_npc_sign);

                        scr_speaker("no_name");
                        msgsetloc(0, "* Great doing business with you!!/", "scr_text_slash_scr_text_gml_4517_0");
                        msgnextloc("* (It turned into a Check.)/", "scr_text_slash_scr_text_gml_4534_0_b");
                        msgnextloc("* (You sent the Check to your Multiworld.)/%", "scr_text_slash_scr_text_gml_4534_0_b");
                    }
/// END

/// AFTER
            msgnextloc("* For $100^1, Choose your OWN flavor!!/", "scr_text_slash_scr_text_gml_4546_0");
            msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_4547_0");
/// CODE
            scr_hintspot(108);
            scr_hintspot(109);
            scr_hintspot(110);
            scr_hintspot(111);
/// END

/// REPLACE
            global.choicemsg[1] = scr_havechar(4) ? stringsetloc(" #Noelle", "scr_text_slash_scr_text_gml_4586_0") : stringsetloc(" #Susie", "scr_text_slash_scr_text_gml_4586_1");
            global.choicemsg[2] = scr_havechar(4) ? stringsetloc(" ", "scr_text_slash_scr_text_gml_4587_0_b") : stringsetloc("Ralsei", "scr_text_slash_scr_text_gml_4587_1");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_4588_0");
            scr_speaker("no_name");
            msgsetloc(0, "* OK!^1! Choose your OWN flavor!!/", "scr_text_slash_scr_text_gml_4590_0");
            var choiceAmount = scr_havechar(4) ? "\\C2 " : "\\C3 ";
/// CODE
            global.choicemsg[1] = stringsetloc(" #Noelle", "scr_text_slash_scr_text_gml_4586_0");
            global.choicemsg[2] = stringsetloc("Susie", "scr_text_slash_scr_text_gml_4586_1");
            global.choicemsg[3] = stringsetloc("Ralsei", "scr_text_slash_scr_text_gml_4587_1");
            scr_speaker("no_name");
            msgsetloc(0, "* OK!^1! Choose your OWN flavor!!/", "scr_text_slash_scr_text_gml_4590_0");
            var choiceAmount = "\\C4 ";
/// END

/// REPLACE
            if (global.choice == 0)
                itemgetstring = scr_itemget_anytype_text(18, "item");
            
            if (global.choice == 1)
            {
                var teaitemid = scr_havechar(4) ? 19 : 21;
                itemgetstring = scr_itemget_anytype_text(teaitemid, "item");
            }
            
            if (global.choice == 2)
                itemgetstring = scr_itemget_anytype_text(20, "item");
/// CODE
            if (global.choice == 0)
            {
                t_itemid = 108;
                itemgetstring = scr_itemget_anytype_text(18, "check");
            }
            
            if (global.choice == 1)
            {
                t_itemid = 109;
                itemgetstring = scr_itemget_anytype_text(19, "check");
            }
            
            if (global.choice == 2)
            {
                t_itemid = 110;
                itemgetstring = scr_itemget_anytype_text(21, "check");
            }
            
            if (global.choice == 3)
            {
                t_itemid = 111;
                itemgetstring = scr_itemget_anytype_text(20, "check");
            }
/// END

/// REPLACE
                if (global.flag[253] == 1)
                {
                    if (!scr_itemcheck(7) && !scr_itemcheck_pocket(7))
                    {
                        scr_itemget(7);
                        
/// CODE
                if (global.flag[253] <= 1)
                {
                    noroom = 0;
                    
                    if (global.customflags[10] == 0)
                    {
/// END

/// REPLACE
                                msgnextloc("* That's the power of [Baker's Arms]!/", "scr_text_slash_scr_text_gml_4998_0");
                                msgnextloc("* (You got Spincake.)/%", "scr_text_slash_scr_text_gml_4999_0");
/// CODE
                                msgnextloc("* (You sent a Check to your Multiworld.)/%", "scr_text_slash_scr_text_gml_4999_0");
                                global.flag[313] = 1;
                                global.customflags[10] = 1;
                                scr_checkspot(39);
/// END

/// REPLACE
                                msgnextloc("* Like night and day^1, the cake and the world revolve!/", "scr_text_slash_scr_text_gml_5008_0");
                                msgnextloc("* (You got Spincake.)/", "scr_text_slash_scr_text_gml_5009_0");
/// CODE
                                msgnextloc("* (You sent a Check to your Multiworld.)/", "scr_text_slash_scr_text_gml_5009_0");
                                msgnextloc("* Come again another day^1! Haha hiha!/%", "scr_text_slash_scr_text_gml_5010_0");
                                global.customflags[10] = 1;
                                scr_checkspot(39);
/// END

/// REPLACE
                msgsetloc(0, "* (The EmptyDisk was added to your KEY ITEMS.)/%", "scr_text_slash_scr_text_gml_5633_0");
                snd_play(snd_item);
                
                if (scr_keyitemcheck(10) == 0)
                    scr_keyitemget(10);
/// CODE
                msgsetloc(0, "* (A Check was sent to your Multiworld.)/%", "scr_text_slash_scr_text_gml_5633_0");
                snd_play(snd_item);
                scr_checkspot(96);
                
                if (global.customflags[15] == 0)
                    global.customflags[15] = 1;
/// END

/// REPLACE
                    scr_weaponget(13);
/// CODE
                    scr_checkspot(113);
                    global.customflags[18] = 1;
/// END

/// REPLACE
                        msgnextloc("\\S1* (You got the ThornRing.)/%", "scr_text_slash_scr_text_gml_6504_0");
/// CODE
                        msgnextloc("\\S1* (...The ThornRing turned into a Check.)/%", "scr_text_slash_scr_text_gml_6504_0");
/// END

/// REPLACE
        case 1174:
            global.flag[917] = 3;
            
            if (global.choice == 0)
            {
                global.flag[918] = 1;
                scr_speaker("no_name");
                msgsetloc(0, "* You got the Egg./%", "scr_text_slash_scr_text_gml_6548_0");
                snd_play(snd_egg);
                scr_keyitemget(2);
            }
            
            if (global.choice == 1)
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Well^1, there was not a man here./%", "scr_text_slash_scr_text_gml_6556_0");
/// CODE
        case 1174:
            if (global.choice == 0)
            {
                global.flag[917] = 3;
                global.flag[918] = 1;
                scr_speaker("no_name");
                msgsetloc(0, string("* He sent {0} to your multiworld./%", scr_ap_get_location_reward_text(67)), "scr_text_slash_scr_text_gml_6548_0");
                snd_play(snd_egg);
                scr_checkspot(67);
            }
            
            if (global.choice == 1)
            {
                global.flag[917] = 3;
                scr_speaker("no_name");
                msgsetloc(0, "* Well^1, there was not a man here./", "scr_text_slash_scr_text_gml_6556_0");
                msgnextloc("* (It seems you won't be able to get this check anymore... )/%");
/// END