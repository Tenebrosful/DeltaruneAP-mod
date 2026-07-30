/// PATCH

/// REPLACE
            tdamage = ceil(tdamage - (global.battledf[target] * 3));
/// CODE
            tdamage = scr_damage_calculation(tdamage, target);
/// END