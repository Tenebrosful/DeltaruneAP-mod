/// PATCH

/// AFTER
    solidmake = true;
    instance_create(480, 192, obj_dw_church_jackenstein_pumpkinNPC);
/// CODE
    redflame = instance_create(1520, 1970, obj_dw_church_warpflame);
    
    with (redflame)
    {
        roomtarg = 218;
        entrance = 0;
        color = "red";
    }
/// END