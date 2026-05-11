/// PATCH

/// AFTER
            hspeed = 12;
            turnt -= 8;
            vspeed = -4;
/// CODE
            scr_defeatrun();
/// END

/// AFTER
if (state == 3)
{
/// CODE
    scr_enemyhurt_tired_after_damage(0.3)
/// END