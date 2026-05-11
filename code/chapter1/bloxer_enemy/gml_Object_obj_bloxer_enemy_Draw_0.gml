/// PATCH

/// REPLACE
            if (global.monster[myself] == 0)
                hspeed = 10;
/// CODE
            if (global.monster[myself] == 0)
            {
                scr_defeatrun();
                hspeed = 10;
            }
/// END