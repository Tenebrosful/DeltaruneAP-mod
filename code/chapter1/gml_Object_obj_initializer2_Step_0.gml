/// IMPORT

if (global.savedata_async_id >= 0)
    exit;

if (global.is_console)
{
    if (!variable_global_exists("init_prefetch"))
    {
        global.init_prefetch = true;
        scr_prefetch_textures();
    }
}

if (audio_group_is_loaded(1))
{
    scr_windowcaption(scr_84_get_lang_string("obj_initializer2_slash_Step_0_gml_22_0"));
    global.tempflag[10] = 1;
    roomchoice = room_legend;
    global.plot = 0;
    room_goto(roomchoice);
}