/// IMPORT
if (!init)
{
    init = true;
    var orangenpc = orange;
    
    with (obj_shortcut_door)
        reflect_jump_y = -6;
    
    with (obj_castlereflect_manager)
        add_reflection(1203);
    
    with (orangenpc)
        reflect_jump_y = -6;
    
    with (obj_castlereflect_manager)
        add_reflection(orangenpc);
}
