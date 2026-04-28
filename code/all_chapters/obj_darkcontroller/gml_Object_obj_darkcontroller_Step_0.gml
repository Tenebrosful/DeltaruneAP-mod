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