/// PATCH


/// APPEND
if (room == room_dw_church_jackenstein)
{
    if (sprite_index == spr_bibliox_talk)
    {
        scr_speaker("no_name");
        msgsetloc(0, "* ..^1. Mumble^1, mumble.../", "obj_npc_room_slash_Other_10_gml_79_0");
        msgnextloc("* Don't go.../", "obj_npc_room_slash_Other_10_gml_156_0");
        msgnextloc("* You need climbing claws to return..^1. Mumble.../%", "obj_npc_room_slash_Other_10_gml_156_0");
    }
}

/// END

/// REPLACE
if (room == room_dw_castle_restaurant)
{
    if (sprite_index == spr_lancer_lt_mustache)
    {
        global.msc = 1103;
        scr_text(global.msc);
    }
    
    if (sprite_index == spr_topchef)
    {
        skip = false;
        var spintype = 0;
        
        if (global.flag[253] == 1)
        {
            if (!scr_itemcheck(7) && !scr_itemcheck_pocket(7))
            {
                spintype = 1;
                skip = true;
                
                with (instance_create(0, 0, obj_marker_fancy))
                {
                    dad = other;
                    con = 0;
                    gotitem = false;
                    
                    draw_func = function()
                    {
                    };
                    
                    step_func = function()
                    {
                        if (con == 0)
                        {
                            global.msc = -99;
                            global.choice = -1;
                            option1 = "#" + stringsetloc("SpinCake", "scr_itemnamelist_slash_scr_itemnamelist_gml_26_0");
                            option2 = "#" + stringsetloc("Nothing", "scr_text_slash_scr_text_gml_10579_0");
                            global.choicemsg = [option1, option2];
                            global.interact = 1;
                            scr_speaker("no_name");
                            msgsetloc(0, "* Lightners only want one thing and it's disgusting. I mean delicious./", "obj_npc_room_slash_Other_10_gml_1874_0_b");
                            msgnext("\\C2");
                            d_make();
                            con = 1;
                        }
                        
                        if (con == 1)
                        {
                            if (dad.image_index <= 10)
                                dad.image_index += 0.25;
                            
                            if (instance_exists(obj_choicer_neo))
                                dad.image_index = 0;
                        }
                        
                        if (con == 1 && global.choice != -1)
                        {
                            dad.image_index = 0;
                            
                            if (global.choice == 0)
                            {
                                k_d(2);
                                var haveroom = scr_pocketspace() + scr_inventoryspace();
                                show_debug_message_concat(haveroom);
                                
                                if (!haveroom)
                                {
                                    scr_speaker("no_name");
                                    msgsetloc(0, "* Oh^1, miba^1, oh mama^1! No rooms in your pockets!? What's in there!?/", "obj_npc_room_slash_Other_10_gml_1895_0");
                                    msgnextloc("* Boys and salesmen!? Oh^1, miba^1, oh mama.../%", "obj_npc_room_slash_Other_10_gml_1896_0");
                                    d_make();
                                }
                                else
                                {
                                    snd_play(snd_item);
                                    msgset(0, scr_itemget_anytype_text(7, "item"));
                                    d_make();
                                    gotitem = true;
                                }
                                
                                con = 2;
                            }
                            
                            if (global.choice == 1)
                            {
                                k_d();
                                global.interact = 0;
                                instance_destroy();
                            }
                        }
                        
                        if (con == 2)
                        {
                            if (!gotitem)
                            {
                                if (dad.image_index <= 10)
                                    dad.image_index += 0.25;
                            }
                        }
                        
                        if (con == 2 && !d_ex())
                        {
                            dad.image_index = 0;
                            global.interact = 0;
                            instance_destroy();
                        }
                    };
                }
            }
        }
        
        if (spintype == 0)
        {
            global.msc = 1099;
            scr_text(global.msc);
        }
    }
}
/// CODE
if (room == room_dw_castle_restaurant)
{
    if (sprite_index == spr_lancer_lt_mustache)
    {
        global.msc = 1103;
        scr_text(global.msc);
    }
    
    if (sprite_index == spr_topchef)
    {
        skip = false;
        var spintype = 0;
        
        if (global.flag[253] <= 1)
        {
            spintype = 1;
            skip = true;
            
            with (instance_create(0, 0, obj_marker_fancy))
            {
                dad = other;
                con = 0;
                gotitem = false;
                
                draw_func = function()
                {
                };
                
                step_func = function()
                {
                    if (con == 0)
                    {
                        global.msc = -99;
                        global.choice = -1;
                        option1 = "#" + stringsetloc("SpinCake", "scr_itemnamelist_slash_scr_itemnamelist_gml_26_0");
                        option2 = "#" + stringsetloc("Nothing", "scr_text_slash_scr_text_gml_10579_0");
                        global.choicemsg = [option1, option2];
                        global.interact = 1;
                        scr_speaker("no_name");
                        msgsetloc(0, "* Lightners only want one thing and it's disgusting. I mean delicious./", "obj_npc_room_slash_Other_10_gml_1874_0_b");
                        msgnext("\\C2");
                        d_make();
                        con = 1;
                    }
                    
                    if (con == 1)
                    {
                        if (dad.image_index <= 10)
                            dad.image_index += 0.25;
                        
                        if (instance_exists(obj_choicer_neo))
                            dad.image_index = 0;
                    }
                    
                    if (con == 1 && global.choice != -1)
                    {
                        dad.image_index = 0;
                        
                        if (global.choice == 0)
                        {
                            k_d(2);
                            var haveroom = 1;
                            
                            if (!haveroom)
                            {
                                scr_speaker("no_name");
                                msgsetloc(0, "* Oh^1, miba^1, oh mama^1! No rooms in your pockets!? What's in there!?/", "obj_npc_room_slash_Other_10_gml_1895_0");
                                msgnextloc("* Boys and salesmen!? Oh^1, miba^1, oh mama.../%", "obj_npc_room_slash_Other_10_gml_1896_0");
                                d_make();
                            }
                            else
                            {
                                snd_play(snd_item);
                                t_itemid = 189;
                                msgset(0, scr_itemget_anytype_text(7, "check"));
                                d_make();
                                gotitem = true;
                            }
                            
                            con = 2;
                        }
                        
                        if (global.choice == 1)
                        {
                            k_d();
                            global.interact = 0;
                            instance_destroy();
                        }
                    }
                    
                    if (con == 2)
                    {
                        if (!gotitem)
                        {
                            if (dad.image_index <= 10)
                                dad.image_index += 0.25;
                        }
                    }
                    
                    if (con == 2 && !d_ex())
                    {
                        dad.image_index = 0;
                        global.interact = 0;
                        instance_destroy();
                    }
                };
            }
        }
        
        if (spintype == 0)
        {
            global.msc = 1099;
            scr_text(global.msc);
        }
    }
}
/// END