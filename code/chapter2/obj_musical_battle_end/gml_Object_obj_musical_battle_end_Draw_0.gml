/// PATCH

/// REPLACE
    song2 = mus_play(song1);
/// CODE
    if (mus_get_name(song1) == "cyber_battle_end.ogg")
        song2 = mus_play(song1);
    else
        song2 = mus_loop(song1);
/// END

/// REPLACE
if (con == 19)
{
    con = 20;
    instance_create(x, y, obj_musical_battle_end_fade_out);
}

if (con == 21)
{
    with (obj_sweet_enemy)
        endcon = 4;
/// CODE
if (con == 19)
{
    con = 20;
    instance_create(x, y, obj_musical_battle_end_fade_out);

    if (mus_get_name(song1) != "cyber_battle_end.ogg")
        mus_volume(song2, 0, 20);
}

if (con == 21)
{
    if (mus_get_name(song1) != "cyber_battle_end.ogg")
    {
        snd_stop(song2);
        snd_free(song1);
    }

    with (obj_sweet_enemy)
        endcon = 4;
/// END