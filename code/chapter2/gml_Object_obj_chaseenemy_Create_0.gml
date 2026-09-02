/// PATCH

/// REPLACE
    encounterflag = 543;
    
    if (global.flag[encounterflag] != 0)
        instance_destroy();
/// CODE
    encounterflag = 543;
/// END

/// REPLACE
    touchsprite = spr_npc_tasquemanager_flipped;
    
    if (global.flag[encounterflag] != 0)
        instance_destroy();
/// CODE
    touchsprite = spr_npc_tasquemanager_flipped;
/// END