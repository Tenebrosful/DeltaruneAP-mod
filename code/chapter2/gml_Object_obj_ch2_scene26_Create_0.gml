/// PATCH

/// REPLACE
        instance_destroy();
/// CODE
        instance_destroy(obj_ch2_scene26_gigaqueen);
        rudebuster = false;
        rockanim = false;
        rockcon = false;
        rockanimstop = false;
        rockdog = false;
        rockdogobj = -1;
        rockdogstop = false;
        winelaser = false;
        shakeloop = false;
        shakecon = false;
        fist_explode = false;
        fist_afterimage = false;
        explosions = 0;
        wallanimstart = false;
        wallanimstop = false;
        wallcon = 0;
        walltimer = 0;
        walllayer = -1;
        layerid = -1;
        battletimer = 0;
        whiteall = scr_marker(-10, -10, spr_pixel_white);
        whiteall.image_xscale = 999;
        whiteall.image_yscale = 999;
        whiteall.depth = 100;
        whiteall.image_alpha = 0;
        bg_cover = scr_marker(-10, -10, spr_pixel_white);
        bg_cover.image_xscale = 999;
        bg_cover.image_yscale = 999;
        bg_cover.depth = 1000350;
        bg_cover.image_blend = c_black;
        bg_cover.image_alpha = 0;
        berdly_coaster = -1;
        berdly_coaster_start = false;
        berdly_coaster_leave = false;
        anime_bg = instance_create(1640, 550, obj_anime_bg_controller);
        anime_bg.depth = 92000;
        
        with (anime_bg)
            image_alpha = 0;
        
        power_up = -4;
        disable_face = false;
        enable_face = false;
        set_queen_voice = false;
        laser_con = -1;
        release_queen = false;
        queen_laugh_start = false;
        queen_laugh_stop = false;
        queen_release_fast = false;
        queen_leave_fast = false;
        platform_fall = false;
        hand_shake = false;
        hand_catch = false;
        cityscape_fall = false;
        
        if (scr_sideb_get_phase() >= 2)
        {
            var lay_id = layer_get_id("TILES");
            platform_y = layer_get_y(lay_id);
            platform_fall = false;
            platform_timer = 0;
            raise_hands = false;
            
            for (var i = 0; i < 3; i++)
            {
                hand_platform[i] = scr_marker(1550 + (i * 100), cameray() + view_hport[0] + (sprite_get_height(spr_cutscene_26_hand_platform) / 2), spr_cutscene_26_hand_platform);
                
                with (hand_platform[i])
                {
                    image_xscale = 2;
                    image_yscale = 2;
                    depth = 1000300 - (i * 10);
                }
            }
        }
        
        queen_afterimage = false;
        kris_active = false;
        make_npc_a = false;
        make_npc_b = false;
        shake_hand = false;
        queen_surprised = false;
        queen_laugh_start = false;
        queen_laugh_stop = false;
        queen_leave = false;
        hand_release = false;
        hand_leave = false;
        su_struggle = false;
        su_shocked = false;
        su_look_left = false;
        su_look_right = false;
        su_grin_1 = false;
        su_grin_2 = false;
        su_squint_1 = false;
        su_squint_2 = false;
        su_concerned = false;
        ra_struggle = false;
        ra_huh = false;
        ra_look = false;
        ra_smile = false;
        ra_scared = false;
        ra_stern = false;
        ra_mu = false;
        ra_shake = false;
        con = 99;
/// END