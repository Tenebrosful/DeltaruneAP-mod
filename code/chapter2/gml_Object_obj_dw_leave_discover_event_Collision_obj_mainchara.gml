/// IMPORT
if (global.interact == 0)
{
    global.interact = 1;
    scr_speaker("susie");
    msgsetloc(0, "\\E6* Hey^1, this looks like the beam of light in Castle Town./", "obj_readable_room1_slash_Other_10_gml_2043_0");
    scr_anyface_next("ralsei", "0");
    msgnextloc("\\E0* It seems like the door to the computer lab is still cracked open./", "obj_readable_room1_slash_Other_10_gml_2045_0");
    msgnextloc("\\E9* If we must return to Castle Town^1, you two can go here to exit./", "obj_readable_room1_slash_Other_10_gml_2045_0");
    scr_anyface_next("susie", "1");
    msgnextloc("\\E1* I thought you told us work on our project before we go back./", "obj_readable_room1_slash_Other_10_gml_2047_0");
    scr_anyface_next("ralsei", "5");
    msgnextloc("\\E5* Well^1, if you promise to seal the fountain here^1, I'll forgive you./", "obj_readable_room1_slash_Other_10_gml_2045_0");
    scr_anyface_next("susie", "2");
    msgnextloc("\\E2* Pshh^1, you think we'd give up the chance to go on another adventure?/", "obj_readable_room1_slash_Other_10_gml_2047_0");
    scr_anyface_next("ralsei", "G");
    msgnextloc("\\EG* I didn't hear a \"promise\"!/", "obj_readable_room1_slash_Other_10_gml_2045_0");
    scr_anyface_next("susie", "5");
    msgnextloc("\\E5* Ugh^1, fine^1. We promise./", "obj_readable_room1_slash_Other_10_gml_2047_0");
    scr_anyface_next("ralsei", "2");
    msgnextloc("\\E2* Well then^1, consider yourselves forgiven!/%", "obj_readable_room1_slash_Other_10_gml_2045_0");
    d_make();
    con = 1;
    global.customflags[36] = 1;
}

if (con == 1 && !d_ex())
{
    global.interact = 0;
    instance_destroy();
}
