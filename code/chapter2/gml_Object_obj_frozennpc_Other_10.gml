/// IMPORT
global.interact = 1;
scr_speaker("no one");
msgsetloc(0, "* (It's frozen solid...)/%", "obj_frozennpc_slash_Other_10_gml_4_0");

if (scr_havechar(2))
{
    scr_speaker("susie");
    msgsetloc(0, "\\EC* Everything's frozen.../");
    msgnextloc("\\E1* Wonder what happened around here./%");
}

onebuffer = 5;
myinteract = 3;
mydialoguer = d_make();