/// PATCH

/// APPEND
if (room == room_dw_church_jackenstein && x == 320)
{
    sprite_index = spr_bibliox_talk;
    depthcancel = 1;
    depth = 900000;
    
    if (scr_keyitemcheck(31))
        instance_destroy();
}

if ((room == room_dw_church_gersonstudy && x == 600) || (room == room_dw_church_knightclimb_post && x == 160))
{
    if (global.plot >= 243 && global.flag[852] < 1)
    {
        return_to_gerson = instance_create(x + 20, y + 40, obj_dw_church_warpflame);
        return_to_gerson.color = "blue";
        return_to_gerson.roomtarg = 185;
        mywall = instance_create(x, y + 20, obj_solidblocksized);
    }
    
    instance_destroy();
}
/// END
