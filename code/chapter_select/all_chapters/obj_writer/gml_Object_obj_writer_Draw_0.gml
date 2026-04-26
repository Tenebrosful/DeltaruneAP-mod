/// PATCH

/// REPLACE
#if CHAPTER_1
        if (automash_timer == 0)
            automash_timer = 1;
        else
            automash_timer = 0;
        
        if (automash_timer == 0)
        {
            button1 = 1;
            button2 = 1;
        }
#elsif CHAPTER_2
        if (automash_timer == 0)
            automash_timer = 1;
        else
            automash_timer = 0;
        
        if (automash_timer == 0)
            button1 = 1;
        
        if (automash_timer == 1)
            button2 = 1;
#else
            if (automash_timer == 0)
                automash_timer = 1;
            else
                automash_timer = 0;
            
            if (automash_timer == 0)
                button1 = 1;
            
            if (automash_timer == 1)
                button2 = 1;
#endif
/// CODE
        button1 = 1;
        button2 = 1;
/// END

/// AFTER
            if (nextchar2 == "0")
                xcolor = mycolor;
/// CODE

            if (nextchar2 == "f") // lower because we think about the future (future colors in future chapters)
                xcolor =global.ap_filler_color
            
            if (nextchar2 == "u")
                xcolor = global.ap_usefull_color

            if (nextchar2 == "g")
                xcolor = global.ap_usefull_progression_color
            
            if (nextchar2 == "p")
                xcolor = global.ap_progression_color
            
            if (nextchar2 == "t")
                xcolor = global.ap_trap_color
/// END