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
    if (siner >= 60)
    {
        if (siner2 == 0)
            snd_play(snd_wing);
        
        siner2 += 1;
        
        if (siner2 <= 10)
            offy += lerp(siner2, 10, 0.5);

        if (siner2 == 30)
            snd_play(snd_fall);
        
        if (siner2 >= 30)
        {
            offy += lerp(0, (siner2 - 30), 0.5);
            image_angle += lerp(0, (siner2 - 30), 0.5);

            if (y > (__view_get(e__VW.YView, 0) + 480 + sprite_height)) // explode
            {
                snd_play(snd_badexplosion);
                ex = instance_create(r.x + 30, r.y + 30, obj_animation);

                with (ex)
                {
                    sprite_index = spr_realisticexplosion;
                    image_xscale = 2;
                    image_yscale = 2;
                    image_speed = 0.5;
                }

                instance_destroy();
            }
        }
    }
}

enum e__VW
{
    XView,
    YView,
    WView,
    HView,
    Angle,
    HBorder,
    VBorder,
    HSpeed,
    VSpeed,
    Object,
    Visible,
    XPort,
    YPort,
    WPort,
    HPort,
    Camera,
    SurfaceID
}
