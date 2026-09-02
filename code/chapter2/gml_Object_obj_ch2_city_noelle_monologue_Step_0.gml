/// PATCH

/// REPLACE
if (con == 0 && obj_mainchara.x > 150)
/// CODE

if (decemberskipcon == 0 && obj_mainchara.x > 210)
{
    global.interact = 1;
    decemberskipcon = 1;
    scr_speaker("no_name");
    msgset(0, "\\s0* (You notice the very inconspicuous lever on the wall.)/");
    msgnext("* (You feel like \\cYit will save you from watching a very long cutscene\\cW.)/%");
    d_make();
}

if (decemberskipcon == 1 && !d_ex())
{
    global.interact = 0;
    decemberskipcon = 2;
}

if (decemberskipcon == 10)
{
    decemberskipcon = 11;
    snd_play(snd_wing);
    snd_play(snd_spearappear);
    no_silhouette = instance_create(obj_caterpillarchara.x, cameray() - 100, obj_following_silhouette);
    no_silhouette.target_char = obj_caterpillarchara;
    
    with (obj_ch2_noellepuzzle_forcefield)
        fadeout = true;
    
    with (obj_ch2_noellepuzzle_key_noelle)
        pressed = 1;
    
    with (obj_ch2_noellepuzzle_key_kris)
        pressed = 1;
}

if (decemberskipcon == 11 && !d_ex())
{
    decemberskipcon = 12;
    con = 35;
}

if (decemberskipcon == 13 && !d_ex())
{
    timer++;
    var fadetime = 24;
    
    if (timer == 1)
    {
        snd_play(snd_ghostappear);
        fadeout = instance_create(camerax(), cameray(), obj_marker);
        fadeout.depth = -99;
        fadeout.sprite_index = spr_pxwhite;
        fadeout.image_xscale = 640;
        fadeout.image_yscale = 480;
        fadeout.image_blend = c_white;
        fadeout.image_alpha = 0;
        
        with (fadeout)
        {
            image_alpha = 0;
            scr_lerpvar("image_alpha", 0, 1, round(fadetime * 0.75), 2, "out");
        }
    }
    
    if (timer == (1 + fadetime))
    {
        with (instance_create(0, 0, obj_persistentfadein))
            image_blend = c_white;
        
        obj_mainchara.x = 6960;
        obj_mainchara.y = 1560;
        
        with (obj_caterpillarchara)
        {
            x = 6920;
            y = 1560;
        }
        
        instance_destroy(fadeout);
        decemberskipcon = 14;
    }
}

if (con == 0 && obj_mainchara.x > 250)
/// END

