/// IMPORT
function scr_get_bromide_data(arg0) constructor
{
    key_item_id = arg0;
    bromide_sprite = spr_bromide_r;
    bromide_audio = snd_flowery_bromide_r;
    
    if (key_item_id == 33)
    {
        bromide_sprite = (global.flag[349] == 0) ? spr_bromide_f : spr_bromide_f_alt;
        bromide_audio = snd_flowery_bromide_f;
    }
}
