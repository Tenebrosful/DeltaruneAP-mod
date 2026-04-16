/// PATCH

/// AFTER
if (laznoise == 1)
{
    snd_play(snd_laz_c);
    laznoise = 0;
}
/// CODE
#if CHAPTER_3
if (file_exists("deathlink.flag") && file_exists("WelcomeToTheDead.youDied") && global.customflags[29] == 0)
#else
if (file_exists("deathlink.flag") && file_exists("WelcomeToTheDead.youDied"))
#endif
{
    scr_gameover();
    file_delete("WelcomeToTheDead.youDied");
}
/// END