/// IMPORT
siner += 1;

if (siner <= 30)
{
    offx += (2 - (siner / 15));
    
    if (image_alpha < 1)
        image_alpha += 0.05;
}

if (mus_get_name() == "field_of_hopes.ogg")
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
    if (siner >= 40)
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
        
        instance_destroy();
    }
}
