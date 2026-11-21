/// PATCH

/// BEFORE
    c_msgnextloc("* Anyway^1, they'll let you in with this. Pretty sure. Good \"luck\"^1! Heheheh!/%", "obj_room_tvland_preview_slash_Step_0_gml_76_0");
/// CODE
    c_var_instance(id, "sendlocations", true);
/// END

/// APPEND
if (sendlocations == true)
{
    sendlocations = false;
    
    if (global.plot < 160)
    {
        AP_sendLocation([115, 116, 117, 118, 179, 247]);
    }
    else
    {
        AP_sendLocation([142, 143, 144, 145, 180, 181]);
    }
}
/// END