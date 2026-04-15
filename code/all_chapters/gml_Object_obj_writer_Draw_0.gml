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