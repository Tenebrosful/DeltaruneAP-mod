/// PATCH

/// REPLACE
        with (obj_round_evaluation)
            depth = 990101;
        
        room_goto(room_ch3_gameshowroom);
/// CODE
        if (global.retry_board)
        {
            with (obj_round_evaluation)
                persistent = false;
            
            with (obj_round_evaluation_fg)
                instance_destroy();
            
            persistent = false;
            global.interact = 0;
            global.retry_board = false;
            snd_free_all();
            room_goto(room_dw_green_room);
        }
        else
        {
            with (obj_round_evaluation)
                depth = 990101;
            
            room_goto(room_ch3_gameshowroom);
        }
/// END