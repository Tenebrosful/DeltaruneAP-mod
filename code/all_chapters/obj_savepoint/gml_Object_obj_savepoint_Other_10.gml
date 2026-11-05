/// PATCH

/// AFTER
myinteract = 3;
/// CODE

if (!obj_archipelago_client.AP_isAuthenticated())
{
    nodialogue = 0;
    myinteract = 4;
    scr_speaker("no_name");
    msgsetloc(0, "\\s0* (As you reach for it^1, the light dims.)/", "obj_savepoint_slash_Other_10_gml_177_0");
    msgnextloc("\\s0* (You can only SAVE while connected to the Multiworld.)/%", "obj_savepoint_slash_Other_10_gml_188_0");
}
/// END

#if CHAPTER_2
/// REPLACE
        if (global.flag[469] == 0)
        {
            global.flag[469] = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (You touched the light...)/", "obj_savepoint_slash_Other_10_gml_59_0");
            msgnextloc("* (You thought about how you \\cRcan't go back to the Cyber World\\cW anymore.)/", "obj_savepoint_slash_Other_10_gml_60_0_b");
            msgnextloc("* (You considered this carefully!)/%", "obj_savepoint_slash_Other_10_gml_61_0_b");
        }
        else
        {
            scr_speaker("no_name");
            msgsetloc(0, "* After a long day^1, the town has grown once again./", "obj_savepoint_slash_Other_10_gml_50_0");
            msgnextloc("* You are filled with a certain power.../%", "obj_savepoint_slash_Other_10_gml_51_0");
        }
/// CODE
        myinteract = 4;
        
        if (global.flag[469] == 0)
        {
            global.flag[469] = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* After a long day^1, the town has grown once again./", "obj_savepoint_slash_Other_10_gml_50_0"); 
            msgnextloc("\\s0* However^1, the light dims as your arm gets near./", "obj_savepoint_slash_Other_10_gml_177_0");
            msgnextloc("\\s0* You thought about how you \\cRcan't go back to the Cyber World\\cW anymore./", "obj_savepoint_slash_Other_10_gml_60_0_b");
            msgnextloc("\\s0* Maybe the light is trying to protect you.../", "obj_savepoint_slash_Other_10_gml_177_0");
        }
        else
        {
            scr_speaker("no_name");
            msgsetloc(0, "* The light refuses again./", "obj_savepoint_slash_Other_10_gml_50_0");
            msgnextloc("* Despite this, you are still filled with a certain power.../%", "obj_savepoint_slash_Other_10_gml_51_0");
        }
/// END
#endif