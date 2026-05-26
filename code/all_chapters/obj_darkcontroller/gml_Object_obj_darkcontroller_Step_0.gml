/// PATCH

/// REPLACE
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

/// CODE
            if (up_p())
            {
                movenoise = 1;
                global.submenucoord[30] -= 1;
                
                if (global.submenucoord[30] < 0)
                    global.submenucoord[30] = 6;
            }
            
            if (down_p())
            {
                movenoise = 1;
                global.submenucoord[30] += 1;
                
                if (global.submenucoord[30] > 6)
                    global.submenucoord[30] = 0;
            }
/// END

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