/// IMPORT
if (unlocked == false)
{
    scr_speaker("no_name");
    
    if (room == room_dw_mansion_east_4f_b)
    {
        if (global.MacGuffin_count < global.AP_macguffin_required[1])
        {
            msgsetloc(0, "* It has a lock that seems impossible to open./", "obj_mansion_keygen_lock_slash_Other_10_gml_5_0");
            msgnextloc("* Looks like you need a Key generated with all KeyGen 2 Segments./%");
            myinteract = 3;
        }
        else
        {
            unlocked = true;
            msgsetloc(0, "* (Kris used all KeyGen 2 Segments.)/%", "obj_mansion_keygen_lock_slash_Other_10_gml_9_0");
            global.customflags[16] = 1;
            con = 1;
        }
    }
    else

    {
        if (scr_keyitemcheck(12) == 0)
        {
            msgsetloc(0, "* It has a lock that seems impossible to open./%", "obj_mansion_keygen_lock_slash_Other_10_gml_5_0");
            myinteract = 3;
        }
        
        if (scr_keyitemcheck(12) == 1)
        {
            unlocked = true;
            scr_keyitemremove(12);
            msgsetloc(0, "* (Kris used the KEYGEN.)/%", "obj_mansion_keygen_lock_slash_Other_10_gml_9_0");
            
            if (global.flag[309] < 4)
                global.flag[309] = 4;
            
            con = 1;
        }
    }
    
    global.interact = 1;
    mydialoguer = instance_create(0, 0, obj_dialoguer);
}
