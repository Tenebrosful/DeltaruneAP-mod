/// PATCH

/// REPLACE
                if (spelltarget == 0)
                    scr_spellconsumeb();
                
                if (spelltarget == 1)
                    global.bmenuno = 8;
                
                if (spelltarget == 2)
                    global.bmenuno = 3;
            }
/// CODE
                if (spelltarget == 0)
                    scr_spellconsumeb();
                
                if (spelltarget == 1)
                    global.bmenuno = 8;
                
                if (spelltarget == 2)
                    global.bmenuno = 3;
                    
                                    
                global.spelltarget = spelltarget;
                
                if (spelltarget == 3)
                    global.bmenuno = 99;
            }
/// END