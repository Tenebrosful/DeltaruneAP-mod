/// PATCH

#if !CHAPTER_1
/// REPLACE
if (global.is_console)
{
    if (!instance_exists(obj_gamecontroller))
        instance_create(0, 0, obj_gamecontroller);
    
#if CHAPTER_2
    if (!i_ex(obj_border_controller))
        instance_create(0, 0, obj_border_controller);
#elsif CHAPTER_3
    var border_controller = instance_create(0, 0, obj_border_controller);
    border_controller.init_border();
#else
    instance_create(0, 0, obj_border_controller);
#endif
}
/// CODE
if (!instance_exists(obj_gamecontroller))
    instance_create(0, 0, obj_gamecontroller);

#if CHAPTER_3
var border_controller = instance_create(0, 0, obj_border_controller);
border_controller.init_border();
#else
instance_create(0, 0, obj_border_controller);
#endif
/// END
#endif

/// REPLACE
    if (global.is_console)
    {
        application_surface_enable(true);
        application_surface_draw_enable(false);
    }
    
    scr_enable_screen_border(global.is_console);
/// CODE
    application_surface_enable(true);
    application_surface_draw_enable(false);
    
    if (global.screen_border_id == "None" || global.screen_border_id == "なし")
        scr_enable_screen_border(false);
    else
        scr_enable_screen_border(true);
/// END
