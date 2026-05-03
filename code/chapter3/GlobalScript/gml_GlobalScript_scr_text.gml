/// PATCH

/// AFTER
                    with (obj_room_tvland_preview)
                        con = 10;

/// CODE
                    if (global.plot < 160)
                    {
                        AP_sendLocation(115);
                        AP_sendLocation(116);
                        AP_sendLocation(117);
                        AP_sendLocation(118);
                        AP_sendLocation(179);
                    }
                    else
                    {
                        AP_sendLocation(142);
                        AP_sendLocation(143);
                        AP_sendLocation(144);
                        AP_sendLocation(145);
                        AP_sendLocation(180);
                        AP_sendLocation(181);
                    }
                    
/// END

/// REPLACE
                    msgnextloc("* If you don't have enough now^1, it's too late^1! Try harder next time!/%", "scr_text_slash_scr_text_gml_8573_0");
/// CODE
                    msgnextloc("* Unlike S rank^1, you can't cheat me that easily!/%", "scr_text_slash_scr_text_gml_8573_0");
/// END

/// REPLACE
            global.choicemsg[0] = stringsetloc("#TV World#Entrance", "scr_text_slash_scr_text_gml_10408_0");
            global.choicemsg[1] = stringsetloc("#Goulden Sam", "scr_text_slash_scr_text_gml_10409_0");
            global.choicemsg[2] = stringsetloc("Green Room", "scr_text_slash_scr_text_gml_10433_0");
            global.choicemsg[3] = stringsetloc("Cancel", "scr_text_slash_scr_text_gml_10434_0");
/// CODE
            global.choicemsg[0] = stringsetloc("", "scr_text_slash_scr_text_gml_10408_0");
            global.choicemsg[1] = stringsetloc("", "scr_text_slash_scr_text_gml_10409_0");
            global.choicemsg[2] = stringsetloc("Green Room", "scr_text_slash_scr_text_gml_10433_0");
            global.choicemsg[3] = stringsetloc("Couch Cliffs", "scr_text_slash_scr_text_gml_10434_0");
            
            if (global.customflags[21] >= 1)
                global.choicemsg[0] = stringsetloc("#TV World#Entrance", "scr_text_slash_scr_text_gml_10408_0");
            
            if (global.customflags[21] == 2)
                global.choicemsg[1] = stringsetloc("#Goulden Sam", "scr_text_slash_scr_text_gml_10409_0");
            
/// END

/// REPLACE
        case 1410:
            global.msg[0] = stringsetloc("* (But nothing happened.)/%", "scr_text_slash_scr_text_gml_10421_0");
            
            if (global.choice == 0)
            {
                with (obj_shortcut_door)
                    door_destination = 195;
            }
            
            if (global.choice == 1)
            {
                with (obj_shortcut_door)
                    door_destination = 177;
            }
            
            if (global.choice == 2)
            {
                with (obj_shortcut_door)
                    door_destination = 168;
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("* (You doorn't.)/%", "scr_text_slash_scr_text_gml_10440_0");
            }
            else
            {
                with (obj_shortcut_door)
                {
                    if (door_destination == door_location)
                    {
                        global.msg[0] = stringsetloc("* (Amazingly^1, you are already there.)/%", "scr_text_slash_scr_text_gml_10447_0");
                    }
                    else
                    {
                        global.msg[0] = stringsetloc("* (The door opened...)/%", "scr_text_slash_scr_text_gml_10451_0");
                        con = 50;
                    }
                }
            }
            
            break;
/// CODE
        case 1410:
            global.msg[0] = "* (The door refused.^1)&* (You haven't unlocked this area!)/%";
            
            with (obj_shortcut_door)
                door_destination = -1;
            
            if (global.choice == 0)
            {
                if (global.customflags[21] >= 1)
                {
                    with (obj_shortcut_door)
                        door_destination = 195;
                }
            }
            
            if (global.choice == 1)
            {
                if (global.customflags[21] == 2)
                {
                    with (obj_shortcut_door)
                        door_destination = 177;
                }
            }
            
            if (global.choice == 2)
            {
                with (obj_shortcut_door)
                    door_destination = 168;
            }
            
            if (global.choice == 3)
            {
                with (obj_shortcut_door)
                    door_destination = 100;
            }
            
            with (obj_shortcut_door)
            {
                if (door_destination == -1)
                {
                    with (obj_shortcut_door)
                        door_destination = door_location;
                }
                else if (door_destination == door_location)
                {
                    global.msg[0] = stringsetloc("* (Amazingly^1, you are already there.)/%", "scr_text_slash_scr_text_gml_10447_0");
                }
                else
                {
                    global.msg[0] = stringsetloc("* (The door opened...)/%", "scr_text_slash_scr_text_gml_10451_0");
                    con = 50;
                }
            }
            
            break;
/// END