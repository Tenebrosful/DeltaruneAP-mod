/// PATCH

/// AFTER
    towery = instance_create_depth(camerax() + 320, cameray(), depth + 1000, obj_flowery_towery);
/// CODE
if (i_ex(obj_flowery_lyrics))
{
    with (obj_flowery_lyrics)
    {
        load_song_data();
        load_lyrics();
    }
}
/// END