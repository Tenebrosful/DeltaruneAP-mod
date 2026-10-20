/// PATCH

/// AFTER
myinteract = 3;
/// CODE

if (!obj_archipelago_client.AP_isAuthenticated())
{
    nodialogue = 0;
    myinteract = 4;
    scr_speaker("no_name");
    msgsetloc(0, "\\s0* As you reach for it^1, the light dims./", "obj_savepoint_slash_Other_10_gml_177_0");
    msgnextloc("\\s0* You can only SAVE while connected to the Multiworld./%", "obj_savepoint_slash_Other_10_gml_188_0");
}
/// END