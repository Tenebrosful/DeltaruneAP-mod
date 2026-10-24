/// PATCH

/// REPLACE
        if (arg0 == room_dw_b3bs_interstitial || arg0 == room_dw_inbetween || arg0 == room_dw_ranking_hub)
        {
            _border_image = border_dw_green_room;
            
            if (global.plot >= 280)
                _border_image = border_dw_blue_light;
        }
/// CODE
        if (arg0 == room_dw_b3bs_interstitial || arg0 == room_dw_inbetween || arg0 == room_dw_ranking_hub || room = room_dw_green_room || room = room_dw_teevie_preview)
        {
            _border_image = border_dw_green_room;
            
            if (global.plot >= 280)
                _border_image = border_dw_blue_light;
        }

        if (arg0 == room_dw_ranking_b)
        {
            _border_image = border_dw_green_room;
            
            if (global.plot >= 280)
                _border_image = border_dw_teevie;
        }
/// END