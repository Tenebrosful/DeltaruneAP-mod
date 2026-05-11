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

/// AFTER
if (state == 3)
{
/// CODE
    scr_enemyhurt_tired_after_damage(0.3)
/// END