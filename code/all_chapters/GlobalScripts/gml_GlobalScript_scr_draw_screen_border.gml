/// PATCH .ignore if !CHAPTER_1

/// REPLACE
        if (ossafe_file_exists("filech1_3"))
            game_won = true;
        
        if (ossafe_file_exists("filech1_4"))
            game_won = true;
        
        if (ossafe_file_exists("filech1_5"))
            game_won = true;
/// CODE
        if (scr_completed_chapter_any_slot(1))
            game_won = true;
/// END