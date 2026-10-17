/// PATCH

/// BEFORE
            room_goto(nextroom);
        }
    }
/// CODE
            
            if (scr_havechar(3) && room == room_dw_church_darkmaze)
            {
                scr_losechar();
                scr_getchar(2);
            }
            
/// END

/// AFTER
            snd_free(global.currentsong[0]);
/// CODE
            if (global.AP_ost_shuffle && i_ex(obj_musicer_dw_church))
                snd_free(global.dark_sanctuary_unshuffled_music[0]);
/// END