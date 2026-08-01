/// PATCH

/// APPEND
if (room == room_dw_fcastle_final_save && global.customflags[global.custom_flags_indexes.ch5_helped_final_orange] == 1 && !d_ex())
{
    sprite_index = spr_enemy_orange_walk_right;
    image_speed = 0.125;
    x += 5;
    global.interact = 1;
    
    if (x > 650)
    {
        global.interact = 0;
        instance_destroy();
    }
}

if (con == 0 && (extflag == "floweryleaveleft" || extflag == "floweryleaveright"))
{
    if (d_ex())
    {
        con = 1;
    }
    else
    {
        global.interact = 1;
        mydialoguer = instance_create(0, 0, obj_dialoguer);
    }
}

if (con == 1 && !d_ex())
{
    if (extflag == "floweryleaveleft")
    {
        sprite_index = spr_flowery_walk_left_jacket_hand_up;
        image_speed = 0.125;
        x -= 5;
        global.interact = 1;
        
        if (x < -80)
        {
            global.interact = 0;
            instance_destroy();
        }
    }
    
    if (extflag == "floweryleaveright")
    {
        sprite_index = spr_flowery_walk_right_jacket;
        image_speed = 0.125;
        x += 5;
        global.interact = 1;
        
        if (x > 960)
        {
            global.interact = 0;
            instance_destroy();
        }
    }
}

if (myinteract == 6 && !d_ex())
{
    var fadecol = merge_color(image_blend, c_white, 0.9);
    timer++;
    musfade = 0;
    var fadetime = 24;
    
    if (timer == 1)
    {
        snd_play(snd_ghostappear);
        
        if (musfade)
            snd_volume(global.currentsong[1], 0, fadetime);
        
        fadeout = scr_marker_ext(camerax(), cameray(), spr_pxwhite, 640, 480, undefined, undefined, image_blend, -99, undefined, 0);
        
        with (fadeout)
        {
            scr_lerp_imageblend(id, image_blend, fadecol, fadetime, 4, "in");
            image_alpha = 0;
            scr_lerpvar("image_alpha", 0, 1, round(fadetime * 0.75), 2, "out");
        }
    }
    
    if (timer == (1 + fadetime))
    {
        if (musfade)
        {
            snd_free(global.currentsong[0]);
            snd_stop_all();
        }
        
        global.facing = 0;
        
        with (instance_create(0, 0, obj_persistentfadein))
            image_blend = fadecol;
        
        global.interact = 3;
        global.entrance = 0;
        room_goto(room_dw_fcastle_foxhunt);
    }
}

/// END