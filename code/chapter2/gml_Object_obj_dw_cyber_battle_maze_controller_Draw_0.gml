/// PATCH

/// REPLACE
        with (enem)
        {
            x += 4;
            
            if (x > room_width)
                instance_destroy();
            
            if (!scr_onscreen(id))
                instance_destroy();
        }
/// CODE
        with (enem)
        {
            x += 4;
            var destroy = 0;
            
            if (x > room_width)
                destroy = 1;
            
            if (!scr_onscreen(id))
                destroy = 1;
            
            if (destroy == 1)
                instance_destroy();
        }
/// END