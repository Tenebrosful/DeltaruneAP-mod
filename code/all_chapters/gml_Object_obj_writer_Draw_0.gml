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

            if (nextchar2 == "p") // lower because we think about the future (future colors in future chapters)
                xcolor = c_purple;
            
            if (nextchar2 == "c")
                xcolor = c_aqua;
/// END