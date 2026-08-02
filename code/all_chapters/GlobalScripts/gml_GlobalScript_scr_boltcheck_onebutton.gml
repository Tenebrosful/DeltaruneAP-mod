/// PATCH

/// REPLACE
        if (p == 1)
            points[bc] += 120;
/// CODE
        if (pp == 1 && global.charweapon[1] == 33)
        {
            points[bc] += 150;
            
            with (burstbolt)
                image_blend = c_yellow;
            
            with (burstbolt)
                mag = 0.2;
        }
        else if (p == 1)
        {
            points[bc] += 120;
        }
/// END