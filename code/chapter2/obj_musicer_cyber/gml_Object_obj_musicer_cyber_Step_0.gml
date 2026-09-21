/// IMPORT

if (fade)
{
    vol = 1;
    vol2 = 0;

    if (obj_mainchara.x >= 420)
    {
        vol = 1 - ((obj_mainchara.x - 480) / 920);
        vol2 = 0 + ((obj_mainchara.x - 480) / 920);
    }

    if (vol < 0)
        vol = 0;

    if (vol2 < 0)
        vol2 = 0;

    mus_volume(global.currentsong[1], vol, 0);
    mus_volume(global.cyber_shuffled_music[1], vol2, 0);

    if (room != room_dw_cyber_savepoint)
        fade = 0;
}