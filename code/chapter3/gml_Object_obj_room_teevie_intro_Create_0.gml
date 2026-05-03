/// IMPORT
if (global.customflags[24] == 0)
{
    zapper_npc = instance_create(1940, 140, obj_npc_room);
    
    with (zapper_npc)
    {
        extflag = "zapper";
        sprite_index = spr_npc_zapper_talk;
        scr_depth();
    }
}

exit;