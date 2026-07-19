/// PATCH

/// AFTER
                wave = 2;
                mus_volume(global.batmusic[1], 0.25, 10);
                
                with (obj_mike_minigame_tv)
                {
                    latestscore[minigame] = other.myscore;
                    
                    if (other.myscore > hiscore[minigame])
                    {
                        hiscore[minigame] = other.myscore;
                        global.flag[1699] = other.myscore;
/// CODE
                        AP_handle_mike_minigame_trophy(minigame, other.myscore)
/// END

/// AFTER
        if (game_over)
        {
            mus_volume(global.batmusic[1], 0.5, 10);
            
            with (obj_mike_minigame_tv)
            {
                latestscore[minigame] = other.myscore;
                
                if (other.myscore > hiscore[minigame])
                {
                    hiscore[minigame] = other.myscore;
                    global.flag[1699] = other.myscore;
/// CODE
                    AP_handle_mike_minigame_trophy(minigame, other.myscore)
/// END

/// AFTER
        if (game_over)
        {
            mus_volume(global.batmusic[1], 0.5, 10);
            
            with (obj_mike_minigame_tv)
            {
                latestscore[minigame] = other.myscore;
                
                if (other.myscore > hiscore[minigame])
                {
                    hiscore[minigame] = other.myscore;
                    global.flag[1698] = other.myscore;
/// CODE
                    AP_handle_mike_minigame_trophy(minigame, other.myscore)
/// END

/// AFTER
            with (obj_mike_controller)
                hand_type = 0;
            
            mus_volume(global.batmusic[1], 0.5, 10);
            
            with (obj_mike_minigame_tv)
            {
                latestscore[minigame] = other.myscore;
                
                if (other.myscore > hiscore[minigame])
                {
                    hiscore[minigame] = other.myscore;
                    global.flag[1698] = other.myscore;

/// CODE
                    AP_handle_mike_minigame_trophy(minigame, other.myscore)

/// END

/// REPLACE
                    if (other.action == 3)
                        global.flag[1698] = other.myscore;
                    else
                        global.flag[1699] = other.myscore;
/// CODE
                    if (other.action == 3)
                    {
                        global.flag[1698] = other.myscore;
                        AP_handle_mike_minigame_trophy(minigame, other.myscore)
                    }
                    else
                    {
                        global.flag[1699] = other.myscore;
                        AP_handle_mike_minigame_trophy(minigame, other.myscore)
                    }
/// END