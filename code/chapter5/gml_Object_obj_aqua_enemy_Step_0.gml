/// PATCH

/// AFTER
        var outro5 = stringsetloc("Uuu, how boring.../%", "obj_aqua_enemy_slash_Step_0_gml_20_0");
/// CODE
        
        if (global.maxhp[1] < 0)
        {
            outro3 = stringsetloc("... You still&won't get up?/%", "obj_aqua_enemy_slash_Step_0_gml_18_0");
            outro4 = stringsetloc("Uuu, how boring.../%", "obj_aqua_enemy_slash_Step_0_gml_20_0");
            outro5 = stringsetloc("It's no fun&if you aren't&playing./%", "obj_aqua_enemy_slash_Step_0_gml_19_0");
        }
/// END

/// AFTER
            var violence9 = stringsetloc("Uuu, okay.../%", "obj_aqua_enemy_slash_Step_0_gml_120_0");
/// CODE
            var nochar1 = stringsetloc("Uuu, get up!/%", "obj_aqua_enemy_slash_Step_0_gml_120_0");
            var nochar2 = stringsetloc("Why aren't&you playing?/%", "obj_aqua_enemy_slash_Step_0_gml_120_0");
            var nochar3 = stringsetloc("Do you not&know how to&play?/%", "obj_aqua_enemy_slash_Step_0_gml_120_0");
/// END

/// AFTER
                if (myattackchoice == 3)
                {
                    global.monsterattackname[myself] = "OmegaKnife";
                    dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
                    dc.type = 300;
                    scr_turntimer(300);
                }
                
                turns++;
/// CODE
                if (global.maxhp[1] < 0)
                    aqua_is_BORED();
/// END

/// REPLACE
                    switch (boredom)
                    {
                        case 1:
                            msgset(0, bored1);
                            msgset_add(bored1_2, x - 20, y + 25, 10);
                            break;
                        
                        case 2:
                            msgset(0, bored2);
                            msgset_add(bored2_2, x - 20, y + 25, 10);
                            break;
                        
                        case 3:
                            msgset(0, bored3);
                            msgset_add(bored3_2, x - 20, y + 25, 10);
                            msgset_add(omega2, x - 20, y + 25, 10);
                            msgset_add(omega3, x - 20, y + 25, 10);
                            break;
/// CODE
                    if (global.maxhp[1] < 0)
                    {
                        switch (boredom)
                        {
                            case 1:
                                msgset(0, nochar1);
                                break;
                            
                            case 2:
                                msgset(0, nochar2);
                                break;
                            
                            case 3:
                                msgset(0, nochar3);
                                msgset_add(omega2, x - 20, y + 25, 10);
                                msgset_add(omega3, x - 20, y + 25, 10);
                                break;
                        }
                    }
                    else
                    {
                        switch (boredom)
                        {
                            case 1:
                                msgset(0, bored1);
                                msgset_add(bored1_2, x - 20, y + 25, 10);
                                break;
                            
                            case 2:
                                msgset(0, bored2);
                                msgset_add(bored2_2, x - 20, y + 25, 10);
                                break;
                            
                            case 3:
                                msgset(0, bored3);
                                msgset_add(bored3_2, x - 20, y + 25, 10);
                                msgset_add(omega2, x - 20, y + 25, 10);
                                msgset_add(omega3, x - 20, y + 25, 10);
                                break;
                        }
/// END