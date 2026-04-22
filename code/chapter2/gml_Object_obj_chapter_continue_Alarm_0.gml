/// PATCH

/// REPLACE
{
    var next_chapter = global.chapter + 1;
    
    if (global.is_console)
    {
        var _loading = instance_create(0, 0, obj_screen_loading);
        _loading.show_loading_screen(next_chapter, scr_chapterswitch);
        _loading.depth = -1000;
    }
    else
    {
        scr_chapterswitch(next_chapter);
    }
}
/// CODE
    scr_chapterswitch(0);
/// END