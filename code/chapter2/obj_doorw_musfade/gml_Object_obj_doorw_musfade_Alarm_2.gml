/// PATCH

/// REPLACE
        var man_room = scr_sideb_get_phase() == 0 && global.flag[917] < 2 && global.flag[918] == 0 && ceil(random(50)) == 50;
/// CODE
        var dice_result = ceil(random(100));
        global.AP_egg_attempts++;

        if (global.AP_better_odds)
                var odds = 20;
        else
                var odds = 2;

        var man_room = scr_sideb_get_phase() == 0 && dice_result <= odds;
/// END