/// PATCH

#if CHAPTER_2
/// REPLACE
    if (ossafe_file_exists("dr.ini"))
/// CODE
    if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#elsif !CHAPTER_1
/// REPLACE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists("dr.ini"))
/// CODE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#endif

#if CHAPTER_2
/// REPLACE
    if (ossafe_file_exists("filech" + CH + "_3"))
        menu_go = 2;
    
    if (ossafe_file_exists("filech" + CH + "_4"))
        menu_go = 2;
    
    if (ossafe_file_exists("filech" + CH + "_5"))
        menu_go = 2;
    
    if (global.is_console)
    {
        if (global.game_won == 1)
            menu_go = 2;
    }
/// CODE
    if (scr_completed_chapter_any_slot(global.chapter))
        menu_go = 2;
/// END
#endif

#if !CHAPTER_1
/// REPLACE
    if (menu_go == 0 || menu_go == 1)
    {
        if (global.is_console)
            global.screen_border_alpha = 0;
        
#if CHAPTER_2
        roomchoice = room_intro_ch2;
#elsif CHAPTER_3
        roomchoice = room_intro;
#elsif CHAPTER_4
        roomchoice = room_intro_ch4;
#elsif CHAPTER_5
        roomchoice = room_intro_ch5;
#else
        roomchoice = room_intro;
#endif
    }
    
    if (menu_go == 2)
    {
        if (global.is_console)
            global.screen_border_alpha = 1;
        
        scr_windowcaption("DELTARUNE");
        global.tempflag[10] = 1;
        roomchoice = room_legend;
        global.plot = 0;
    }
    
    if (menu_go == 3)
    {
        if (global.is_console)
            global.screen_border_alpha = 0;
        
#if CHAPTER_2 || CHAPTER_3
        roomchoice = room_next(room);
#else
        roomchoice = room_title_placeholder;
#endif
    }
/// CODE
    if (menu_go == 0 || menu_go == 1)
    {
        global.screen_border_alpha = 0;
        
        switch (global.chapter)
        {
            case 2:
                roomchoice = room_intro_ch2;
                break;
            
            case 3:
                roomchoice = room_intro;
                break;
            
            case 4:
                roomchoice = room_intro_ch4;
                break;
            
            case 5:
                roomchoice = room_intro_ch5;
                break;
            
            default:
                roomchoice = room_intro;
                break;
        }
    }
    
    if (menu_go == 2)
    {
        global.screen_border_alpha = 1;
        scr_windowcaption("DELTARUNE");
        global.tempflag[10] = 1;
        roomchoice = room_legend;
        global.plot = 0;
    }
    
    if (menu_go == 3)
    {
        global.screen_border_alpha = 0;
        
        if (global.chapter < 4)
            roomchoice = room_next(room);
        else
            roomchoice = room_title_placeholder;
    }
/// END
#endif

#if !CHAPTER_1
/// REPLACE
if (global.is_console)
{
    if (global.savedata_async_id >= 0)
        exit;
    
    if (!variable_global_exists("chapter"))
        exit;
    
    if (!textures_loaded)
        textures_loaded = loadtex.loaded;
    
#if CHAPTER_2
    if (textures_loaded)
    {
    }
    else
    {
        exit;
    }
#else
    if (textures_loaded)
        show_debug_message_concat("TEXTURES LOADED");
    else
        exit;
#endif
}
/// CODE
if (!variable_global_exists("chapter"))
    exit;

if (!textures_loaded)
    textures_loaded = loadtex.loaded;

if (textures_loaded)
    show_debug_message_concat("TEXTURES LOADED");
else
    exit;
/// END
#endif