/// PATCH

/// REPLACE
    mus_initloop("cyber.ogg");
/// CODE
    mus_initloop("cyber.ogg", false);
/// END

/// AFTER
if (fadingOut)
{
/// CODE
    if (global.AP_ost_shuffle)
    {
        snd_free(global.currentsong[0]);
        instance_create(0, 0, obj_musicer_cyber);
    }
/// END