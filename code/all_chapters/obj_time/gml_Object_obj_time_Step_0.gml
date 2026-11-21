/// PATCH .ignore if CHAPTER_1

#if CHAPTER_2
/// APPEND
if (!i_ex(obj_border_controller))
    instance_create(0, 0, obj_border_controller);
/// END
#else
/// REPLACE
if (global.is_console)
{
    if (!i_ex(obj_border_controller))
    {
        var border_controller = instance_create(0, 0, obj_border_controller);
        border_controller.init_border();
    }
}
/// CODE
if (!i_ex(obj_border_controller))
{
    var border_controller = instance_create(0, 0, obj_border_controller);
    border_controller.init_border();
}
/// END
#endif