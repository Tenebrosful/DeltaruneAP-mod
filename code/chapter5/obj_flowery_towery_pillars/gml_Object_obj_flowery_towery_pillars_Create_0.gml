/// PATCH

/// APPEND
song_length = 192.024;
bg_change_lockout = 900;
bg_changing = 0;
song_prevpos = 0;
bg_time = [95, 143];
can_change = 0;
songname = "Flowerman_Arrangement.ogg";

if (i_ex(obj_flowery_lyrics))
{
    songname = obj_flowery_lyrics.songname;
    song_length = obj_flowery_lyrics.song_length;
    bg_time = [song_length * (95 / 192.024), song_length * (143 / 192.024)];
}
/// END