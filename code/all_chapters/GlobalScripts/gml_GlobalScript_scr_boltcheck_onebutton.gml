/// PATCH

#if !CHAPTER_5
/// AFTER
    if (qualifybolt != -1)
    {
        bc = boltchar[qualifybolt];
        p = abs(topclose);
/// CODE
        pp = topclose;
/// END

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
#endif