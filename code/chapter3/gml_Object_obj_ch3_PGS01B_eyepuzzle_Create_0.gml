/// PATCH

/// AFTER
    layer_set_visible("ASSETS_Magical_Glass", false);
    bridge_collider = instance_create(1640, 2840, obj_soliddark);
    
    with (bridge_collider)
        image_yscale = 2;
}
/// CODE
else if (global.plot > 70)
{
    layer_set_visible("ASSETS_Magical_Glass", false);
    bridge_collider = instance_create(1640, 2840, obj_soliddark);
    
    with (bridge_collider)
        image_yscale = 2;
    
    clean_up();
    instance_destroy();
    exit;
}
/// END