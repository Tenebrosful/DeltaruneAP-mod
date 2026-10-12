/// IMPORT
global.flag[31] = 1;
var _volume = 0.7;
var _pitch = 1;

if (!snd_is_playing(global.currentsong[1]))
{
    if (global.flag[1306] == 0)
    {
        global.currentsong[0] = snd_init("field_of_hopes_insaneintherain_intro.ogg", false);
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], _volume, _pitch);
        global.flag[1306] = 1;
        instance_create(0, 0, obj_fieldmuslogo);
    }
    else
    {
        global.currentsong[0] = snd_init("field_of_hopes_insaneintherain_loop.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], _volume, _pitch);
    }
}
