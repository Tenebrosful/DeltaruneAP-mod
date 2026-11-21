/// IMPORT
siner += 1;

if (siner <= 30)
{
    offx += (2 - (siner / 15));
    
    if (image_alpha < 1)
        image_alpha += 0.05;
}

if (global.AP_ost_shuffle == false || variable_struct_get(global.AP_ost_mapping, "field_of_hopes.ogg") == "field_of_hopes.ogg")
{
    if (siner >= 120)
    {
        offx += (-8 + (siner / 15));
        image_alpha -= (1/30);
        
        if (image_alpha <= 0)
            instance_destroy();
    }
}
else
{
    if (siner >= 60)
    {
        snd_play(snd_badexplosion);
        ex = instance_create(x + (sprite_width / 2), y, obj_animation);
        
        with (ex)
        {
            sprite_index = spr_realisticexplosion;
            image_xscale = 4;
            image_yscale = 4;
            image_speed = 0.5;
        }

        snd_free(global.currentsong[0]);
        global.currentsong[0] = snd_init("field_of_hopes.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
        instance_destroy();
    }
}
