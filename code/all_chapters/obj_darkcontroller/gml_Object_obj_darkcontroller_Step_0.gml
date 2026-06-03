/// PATCH

#if CHAPTER_1
/// REPLACE
                if (global.submenucoord[global.submenu] < 47 && _down_pressed == 1)
/// CODE
                if (global.submenucoord[global.submenu] < __equipmenumax && _down_pressed == 1)
/// END

/// REPLACE
                        if (global.submenucoord[global.submenu] > (pagemax[0] + 5) && pagemax[0] < 6)
/// CODE
                        if (global.submenucoord[global.submenu] > (pagemax[0] + 5) && pagemax[0] < __equipmenumax)
/// END

/// REPLACE
                        if (global.submenucoord[global.submenu] > (pagemax[1] + 5) && pagemax[1] < 6)
/// CODE
                        if (global.submenucoord[global.submenu] > (pagemax[1] + 5) && pagemax[1] < __equipmenumax)
/// END
#endif

/// AFTER
    if (global.menuno == 2)
    {
        if (global.submenu == 12 || global.submenu == 13 || global.submenu == 14)
        {
/// CODE
            var __equipmenumax;
            
            if (global.submenu == 12)
                __equipmenumax = 47;
            else if (global.submenu == 13 || global.submenu == 14)
                __equipmenumax = 59;
/// END

/// REPLACE
#if CHAPTER_1
        if (global.submenu == 30)
        {
            sndbuffer = 0;
            m_quit = 0;
            
            if (up_p())
            {
                movenoise = 1;
                global.submenucoord[30] -= 1;
                
                if (global.submenucoord[30] < 0)
                    global.submenucoord[30] = 0;
            }
            
            if (down_p())
            {
                movenoise = 1;
                global.submenucoord[30] += 1;
                
                if (global.submenucoord[30] > 6)
                    global.submenucoord[30] = 6;
            }
            
            if (button1_p() && onebuffer < 0)
            {
                upbuffer = 2;
                downbuffer = 2;
                onebuffer = 2;
                twobuffer = 2;
                selectnoise = 1;
                
                if (global.submenucoord[30] == 0)
                    global.submenu = 33;
                
                if (global.submenucoord[30] == 1)
                {
                    global.submenu = 35;
                    global.submenucoord[35] = 0;
                    control_select_con = 0;
                    control_flash_timer = 0;
                }
                
                if (global.submenucoord[30] == 2)
                {
                    if (global.flag[8] == 0)
                        global.flag[8] = 1;
                    else
                        global.flag[8] = 0;
                }
                
                if (global.is_console)
                {
                    if (global.submenucoord[30] == 3)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1;
                        else
                            global.flag[11] = 0;
                    }
                    
                    if (global.submenucoord[30] == 4)
                    {
                        if (global.disable_border)
                        {
                            selectnoise = 0;
                        }
                        else
                        {
                            global.submenu = 36;
                            check_border = 1;
                            border_select = 0;
                        }
                    }
                    
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34;
                    
                    if (global.submenucoord[30] == 6)
                        m_quit = 1;
                }
                else
                {
                    if (global.submenucoord[30] == 3)
                    {
                        with (obj_time)
                            fullscreen_toggle = 1;
                    }
                    
                    if (global.submenucoord[30] == 4)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1;
                        else
                            global.flag[11] = 0;
                    }
                    
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34;
                    
                    if (global.submenucoord[30] == 6)
                        m_quit = 1;
                }
            }
            
            if (button2_p() && twobuffer < 0)
            {
                m_quit = 1;
                cancelnoise = 1;
            }
            
            if (m_quit == 1)
            {
                onebuffer = 2;
                twobuffer = 2;
                global.menuno = 0;
                global.submenu = 0;
            }
        }
        
        if (global.submenu == 31 || global.submenu == 32 || global.submenu == 33)
        {
            se_select = 0;
            sndbuffer -= 1;
            muschange = 0;
            sndchange = 0;
            audchange = 0;
            
            if (right_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    
                    if (global.flag[15] < 1)
                        global.flag[15] += 0.05;
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    
                    if (global.flag[16] < 1)
                        global.flag[16] += 0.05;
                }
                
                if (global.submenu == 33)
                {
                    if (global.flag[17] < 1)
                        global.flag[17] += 0.02;
                    
                    audchange = 1;
                }
            }
            
            if (left_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    
                    if (global.flag[15] > 0)
                        global.flag[15] -= 0.05;
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    
                    if (global.flag[16] > 0)
                        global.flag[16] -= 0.05;
                }
                
                if (global.submenu == 33)
                {
                    audchange = 1;
                    
                    if (global.flag[17] >= 0.02)
                        global.flag[17] -= 0.02;
                }
            }
            
            if (sndchange == 1 && sndbuffer < 0)
            {
                audio_group_set_gain(1, global.flag[15], 0);
                snd_play(snd_noise);
                sndbuffer = 2;
            }
            
            if (muschange == 1)
            {
                if (snd_is_playing(global.currentsong[1]))
                    mus_volume(global.currentsong[1], getmusvol * global.flag[16], 0);
            }
            
            if (audchange == 1 && sndbuffer < 0)
            {
                snd_play(snd_noise);
                sndbuffer = 2;
                audio_set_master_gain(0, global.flag[17]);
            }
            
            if (button1_p() && onebuffer < 0)
                se_select = 1;
            
            if (button2_p() && twobuffer < 0)
                se_select = 1;
            
            if (se_select == 1)
            {
                selectnoise = 1;
                onebuffer = 2;
                twobuffer = 2;
                global.submenu = 30;
            }
        }
        
        if (global.submenu == 34)
        {
            global.submenucoord[34]++;
            
            if (global.submenucoord[34] == 1)
            {
                snd_free_all();
                var lastfade = instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), obj_fadeout);
                lastfade.fadespeed = 0.05;
                lastfade.x = __view_get(e__VW.XView, 0) - 20;
                lastfade.y = __view_get(e__VW.YView, 0) - 20;
                lastfade.image_xscale *= 3;
                lastfade.image_yscale *= 2;
                lastfade.depth = -900000;
            }
            
            if (global.submenucoord[34] >= 50)
                game_restart_true();
        }
#elsif CHAPTER_2
        if (global.submenu == 30)
        {
            sndbuffer = 0;
            m_quit = 0;
            
            if (up_p())
            {
                movenoise = 1;
                global.submenucoord[30] -= 1;
                
                if (global.submenucoord[30] < 0)
                    global.submenucoord[30] = 0;
            }
            
            if (down_p())
            {
                movenoise = 1;
                global.submenucoord[30] += 1;
                
                if (global.submenucoord[30] > 6)
                    global.submenucoord[30] = 6;
            }
            
            if (button1_p() && onebuffer < 0)
            {
                upbuffer = 2;
                downbuffer = 2;
                onebuffer = 2;
                twobuffer = 2;
                selectnoise = 1;
                
                if (global.submenucoord[30] == 0)
                    global.submenu = 33;
                
                if (global.submenucoord[30] == 1)
                {
                    global.submenu = 35;
                    global.submenucoord[35] = 0;
                    control_select_con = 0;
                    control_flash_timer = 0;
                }
                
                if (global.submenucoord[30] == 2)
                {
                    if (global.flag[8] == 0)
                        global.flag[8] = 1;
                    else
                        global.flag[8] = 0;
                }
                
                if (global.is_console)
                {
                    if (global.submenucoord[30] == 3)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1;
                        else
                            global.flag[11] = 0;
                    }
                    
                    if (global.submenucoord[30] == 4)
                    {
                        if (room == room_dw_mansion_krisroom && global.plot <= 100)
                            global.disable_border = true;
                        
                        if (global.disable_border)
                        {
                            selectnoise = 0;
                        }
                        else
                        {
                            global.submenu = 36;
                            check_border = 1;
                            border_select = 0;
                        }
                    }
                    
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34;
                    
                    if (global.submenucoord[30] == 6)
                    {
                        m_quit = 1;
                        cancelnoise = 1;
                    }
                }
                else
                {
                    if (global.submenucoord[30] == 3)
                    {
                        with (obj_time)
                            fullscreen_toggle = 1;
                    }
                    
                    if (global.submenucoord[30] == 4)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1;
                        else
                            global.flag[11] = 0;
                    }
                    
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34;
                    
                    if (global.submenucoord[30] == 6)
                    {
                        m_quit = 1;
                        cancelnoise = 1;
                    }
                }
            }
            
            if (button2_p() && twobuffer < 0)
            {
                m_quit = 1;
                cancelnoise = 1;
            }
            
            if (m_quit == 1)
            {
                onebuffer = 2;
                twobuffer = 2;
                global.menuno = 0;
                global.submenu = 0;
            }
        }
        
        if (global.submenu == 31 || global.submenu == 32 || global.submenu == 33)
        {
            se_select = 0;
            sndbuffer -= 1;
            muschange = 0;
            sndchange = 0;
            audchange = 0;
            
            if (right_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    
                    if (global.flag[15] < 1)
                        global.flag[15] += 0.05;
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    
                    if (global.flag[16] < 1)
                        global.flag[16] += 0.05;
                }
                
                if (global.submenu == 33)
                {
                    if (global.flag[17] < 1)
                        global.flag[17] += 0.02;
                    
                    audchange = 1;
                }
            }
            
            if (left_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    
                    if (global.flag[15] > 0)
                        global.flag[15] -= 0.05;
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    
                    if (global.flag[16] > 0)
                        global.flag[16] -= 0.05;
                }
                
                if (global.submenu == 33)
                {
                    audchange = 1;
                    
                    if (global.flag[17] >= 0.02)
                        global.flag[17] -= 0.02;
                }
            }
            
            if (sndchange == 1 && sndbuffer < 0)
            {
                audio_group_set_gain(1, global.flag[15], 0);
                snd_play(snd_noise);
                sndbuffer = 2;
            }
            
            if (muschange == 1)
            {
                if (snd_is_playing(global.currentsong[1]))
                    mus_volume(global.currentsong[1], getmusvol * global.flag[16], 0);
            }
            
            if (audchange == 1 && sndbuffer < 0)
            {
                snd_play(snd_noise);
                sndbuffer = 2;
                audio_set_master_gain(0, global.flag[17]);
            }
            
            if (button1_p() && onebuffer < 0)
                se_select = 1;
            
            if (button2_p() && twobuffer < 0)
                se_select = 1;
            
            if (se_select == 1)
            {
                selectnoise = 1;
                onebuffer = 2;
                twobuffer = 2;
                global.submenu = 30;
            }
        }
        
        if (global.submenu == 34)
        {
            global.submenucoord[34]++;
            
            if (global.submenucoord[34] == 1)
            {
                global.chapter_return = 2;
                snd_free_all();
                var lastfade = instance_create(camerax(), cameray(), obj_fadeout);
                lastfade.fadespeed = 0.05;
                lastfade.x = camerax() - 20;
                lastfade.y = cameray() - 20;
                lastfade.image_xscale *= 3;
                lastfade.image_yscale *= 2;
                lastfade.depth = -900000;
            }
            
            if (global.submenucoord[34] >= 50)
                game_restart_true();
        }
#else
        if (global.submenu == 30)
        {
            sndbuffer = 0;
            m_quit = 0;
            
            if (up_p())
            {
                movenoise = 1;
                global.submenucoord[30] -= 1;
                
                if (global.submenucoord[30] < 0)
                    global.submenucoord[30] = 0;
            }
            
            if (down_p())
            {
                movenoise = 1;
                global.submenucoord[30] += 1;
                
                if (global.submenucoord[30] > 6)
                    global.submenucoord[30] = 6;
            }
            
            if (button1_p() && onebuffer < 0)
            {
                upbuffer = 2;
                downbuffer = 2;
                onebuffer = 2;
                twobuffer = 2;
                selectnoise = 1;
                
                if (global.submenucoord[30] == 0)
                    global.submenu = 33;
                
                if (global.submenucoord[30] == 1)
                {
                    global.submenu = 35;
                    global.submenucoord[35] = 0;
                    control_select_con = 0;
                    control_flash_timer = 0;
                }
                
                if (global.submenucoord[30] == 2)
                {
                    if (global.flag[8] == 0)
                        global.flag[8] = 1;
                    else
                        global.flag[8] = 0;
                }
                
                if (global.is_console)
                {
                    if (global.submenucoord[30] == 3)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1;
                        else
                            global.flag[11] = 0;
                    }
                    
                    if (global.submenucoord[30] == 4)
                    {
                        if (global.disable_border)
                        {
                            selectnoise = 0;
                        }
                        else
                        {
                            global.submenu = 36;
                            check_border = 1;
                            border_select = 0;
                        }
                    }
                    
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34;
                    
                    if (global.submenucoord[30] == 6)
                    {
                        m_quit = 1;
                        cancelnoise = 1;
                    }
                }
                else
                {
                    if (global.submenucoord[30] == 3)
                    {
                        with (obj_time)
                            fullscreen_toggle = 1;
                    }
                    
                    if (global.submenucoord[30] == 4)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1;
                        else
                            global.flag[11] = 0;
                    }
                    
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34;
                    
                    if (global.submenucoord[30] == 6)
                    {
                        m_quit = 1;
                        cancelnoise = 1;
                    }
                }
            }
            
            if (button2_p() && twobuffer < 0)
            {
                m_quit = 1;
                cancelnoise = 1;
            }
            
            if (m_quit == 1)
            {
                onebuffer = 2;
                twobuffer = 2;
                global.menuno = 0;
                global.submenu = 0;
            }
        }
        
        if (global.submenu == 31 || global.submenu == 32 || global.submenu == 33)
        {
            se_select = 0;
            sndbuffer -= 1;
            muschange = 0;
            sndchange = 0;
            audchange = 0;
            
            if (right_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    
                    if (global.flag[15] < 1)
                        global.flag[15] += 0.05;
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    
                    if (global.flag[16] < 1)
                        global.flag[16] += 0.05;
                }
                
                if (global.submenu == 33)
                {
                    if (global.flag[17] < 1)
                        global.flag[17] += 0.02;
                    
                    audchange = 1;
                }
            }
            
            if (left_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    
                    if (global.flag[15] > 0)
                        global.flag[15] -= 0.05;
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    
                    if (global.flag[16] > 0)
                        global.flag[16] -= 0.05;
                }
                
                if (global.submenu == 33)
                {
                    audchange = 1;
                    
                    if (global.flag[17] >= 0.02)
                        global.flag[17] -= 0.02;
                }
            }
            
            if (sndchange == 1 && sndbuffer < 0)
            {
                audio_group_set_gain(1, global.flag[15], 0);
                snd_play(snd_noise);
                sndbuffer = 2;
            }
            
            if (muschange == 1)
            {
                if (snd_is_playing(global.currentsong[1]))
                    mus_volume(global.currentsong[1], getmusvol * global.flag[16], 0);
            }
            
            if (audchange == 1 && sndbuffer < 0)
            {
                snd_play(snd_noise);
                sndbuffer = 2;
                audio_set_master_gain(0, global.flag[17]);
            }
            
            if (button1_p() && onebuffer < 0)
                se_select = 1;
            
            if (button2_p() && twobuffer < 0)
                se_select = 1;
            
            if (se_select == 1)
            {
                selectnoise = 1;
                onebuffer = 2;
                twobuffer = 2;
                global.submenu = 30;
            }
        }
        
        if (global.submenu == 34)
        {
            global.submenucoord[34]++;
            
            if (global.submenucoord[34] == 1)
            {
                snd_free_all();
                var lastfade = instance_create(camerax(), cameray(), obj_fadeout);
                lastfade.fadespeed = 0.05;
                lastfade.x = camerax() - 20;
                lastfade.y = cameray() - 20;
                lastfade.image_xscale *= 3;
                lastfade.image_yscale *= 2;
                lastfade.depth = -900000;
                
                with (obj_border_controller)
                    hide_border(0.05);
            }
            
            if (global.submenucoord[34] >= 50)
                game_restart_true();
        }
#endif
/// CODE
        if (global.submenu == 30)
        {
            max_index = 20;
            sndbuffer = 0;
            m_quit = 0;
            
            if (up_p())
            {
                movenoise = true;
                global.submenucoord[30] -= 1;
                
                if (global.submenucoord[30] < 0)
                    global.submenucoord[30] = max_index;
            }
            
            if (down_p())
            {
                movenoise = true;

                if (global.submenucoord[30] == 9)
                  global.submenucoord[30] = max_index;
                else
                  global.submenucoord[30] += 1;
                
                if (global.submenucoord[30] > max_index)
                    global.submenucoord[30] = 0;
            }

            if (left_p() || right_p())
            {
              movenoise = true;

              if (global.submenucoord[30] < 10)
                global.submenucoord[30] += 10;
              else
                global.submenucoord[30] -= 10;
            }
            
            if (button1_p() && onebuffer < 0)
            {
                upbuffer = 2;
                downbuffer = 2;
                onebuffer = 2;
                twobuffer = 2;
                selectnoise = 1;
                
                // Master Volume
                if (global.submenucoord[30] == 0)
                    global.submenu = 33;

                // Music Volume
                if (global.submenucoord[30] == 1)
                    global.submenu = 32;

                // Music Volume
                if (global.submenucoord[30] == 2)
                    global.submenu = 31;
                
                // Controls
                if (global.submenucoord[30] == 3)
                {
                    global.submenu = 35;
                    global.submenucoord[35] = 0;
                    control_select_con = 0;
                    control_flash_timer = 0;
                }
                
                // Simplify VFX
                if (global.submenucoord[30] == 4)
                {
                    global.flag[8] = !global.flag[8]
                }

                // Disable Shakes
                if (global.submenucoord[30] == 5)
                {
                    global.flag[12] = !global.flag[12]
                }

                // Fullscreen
                if (global.submenucoord[30] == 6)
                {
                    with (obj_time)
                        fullscreen_toggle = true;
                }

                // Auto-run
                if (global.submenucoord[30] == 7)
                {
                    global.flag[11] = !global.flag[11]
                }

                // Deathlink
                if (global.submenucoord[30] == 10)
                {
                    global.AP_deathlink = !global.AP_deathlink;
                    obj_archipelago_client.AP_updateTags();
                }

                // Load the last save
                if (global.submenucoord[30] == 17)
                {
                    scr_load();
                }

                // Return to chapter select
                if (global.submenucoord[30] == 18)
                {
                  global.submenu = 34;
                }

                // Return to chapter select
                if (global.submenucoord[30] == 19)
                {
                  global.submenu = 34;
                }

                // Back
                if (global.submenucoord[30] == 20)
                {
                  m_quit = true;
                }
            }
            
            if (button2_p() && twobuffer < 0)
            {
                m_quit = 1;
                cancelnoise = 1;
            }
            
            if (m_quit == 1)
            {
                onebuffer = 2;
                twobuffer = 2;
                global.menuno = 0;
                global.submenu = 0;
            }
        }

        if (global.submenu == 31 || global.submenu == 32 || global.submenu == 33)
        {
            se_select = 0;
            sndbuffer -= 1;
            muschange = 0;
            sndchange = 0;
            audchange = 0;
            
            if (right_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    global.flag[15] = min(global.flag[15] + 0.01, 1);
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    global.flag[16] = min(global.flag[16] + 0.01, 1);
                }
                
                if (global.submenu == 33)
                {
                    global.flag[17] = min(global.flag[17] + 0.01, 1);
                    audchange = 1;
                }
            }
            
            if (left_h())
            {
                if (global.submenu == 31)
                {
                    sndchange = 1;
                    global.flag[15] = max(global.flag[15] - 0.01, 0);
                }
                
                if (global.submenu == 32)
                {
                    muschange = 1;
                    global.flag[16] = max(global.flag[16] - 0.01, 0);
                }
                
                if (global.submenu == 33)
                {
                    audchange = 1;
                    global.flag[17] = max(global.flag[17] - 0.01, 0);
                }
            }
            
            if (sndchange == 1 && sndbuffer < 0)
            {
                audio_group_set_gain(1, global.flag[15], 0);
                snd_play(snd_noise);
                sndbuffer = 2;
            }
            
            if (muschange == 1)
            {
                if (snd_is_playing(global.currentsong[1]))
                    mus_volume(global.currentsong[1], getmusvol * global.flag[16], 0);
            }
            
            if (audchange == 1 && sndbuffer < 0)
            {
                snd_play(snd_noise);
                sndbuffer = 2;
                audio_set_master_gain(0, global.flag[17]);
            }
            
            if (button1_p() && onebuffer < 0)
                se_select = 1;
            
            if (button2_p() && twobuffer < 0)
                se_select = 1;
            
            if (se_select == 1)
            {
                selectnoise = 1;
                onebuffer = 2;
                twobuffer = 2;
                global.submenu = 30;
            }
        }
        
        if (global.submenu == 34)
        {
            global.submenucoord[34]++;
            
            if (global.submenucoord[34] == 1)
            {
                snd_free_all();
                var lastfade = instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), obj_fadeout);
                lastfade.fadespeed = 0.05;
                lastfade.x = __view_get(e__VW.XView, 0) - 20;
                lastfade.y = __view_get(e__VW.YView, 0) - 20;
                lastfade.image_xscale *= 3;
                lastfade.image_yscale *= 2;
                lastfade.depth = -900000;
            }
            
            if (global.submenucoord[34] >= 50)
                if (global.submenucoord[30] == 18)
                  scr_chapterswitch(0);
                else
                  game_restart_true();
        }
/// END