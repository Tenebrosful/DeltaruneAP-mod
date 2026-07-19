/// PATCH

#if CHAPTER_1
/// AFTER
            if (nextchar == "a")
                textalignment = nextchar2;
/// CODE
            if (nextchar == "s")
            {
                if (nextchar2 == "0")
                    skippable = 0;
            }
/// END
#endif

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
#if CHAPTER_1 || CHAPTER_2 || CHAPTER_4 || CHAPTER_5
            if (nextchar2 == "0")
                xcolor = mycolor;
#elsif CHAPTER_3
                if (nextchar2 == "0")
                    xcolor = mycolor;
#endif
/// CODE

            if (nextchar2 == "f") // lower because we think about the future (future colors in future chapters)
                xcolor = rgb_to_bgr(hex_to_dec(global.AP_colors.filler))
            
            if (nextchar2 == "u")
                xcolor = rgb_to_bgr(hex_to_dec(global.AP_colors.useful))

            if (nextchar2 == "g")
                xcolor = rgb_to_bgr(hex_to_dec(global.AP_colors.useful_progression))
            
            if (nextchar2 == "p")
                xcolor = rgb_to_bgr(hex_to_dec(global.AP_colors.progression))
            
            if (nextchar2 == "t")
                xcolor = rgb_to_bgr(hex_to_dec(global.AP_colors.trap))
/// END