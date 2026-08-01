/// IMPORT
if (!init)
{
    init = true;
    
    with (obj_shortcut_door)
        reflect_jump_y = -6;
    
    with (obj_castlereflect_manager)
        add_reflection(1203);
    
    if (i_ex(orange))
    {
        var orangenpc = orange;
        
        with (orangenpc)
            reflect_jump_y = -6;
        
        with (obj_castlereflect_manager)
            add_reflection(orangenpc);
    }
}
