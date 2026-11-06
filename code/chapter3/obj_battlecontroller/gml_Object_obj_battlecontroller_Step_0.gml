/// PATCH

/// AFTER
        global.monstergold[3] *= 1 + (scr_armorcheck_equipped_party(8) * 0.05);
        global.monstergold[3] *= 1 + (scr_armorcheck_equipped_party(21) * 0.3);
/// CODE
        global.monstergold[3] -= global.monstergold[3] * (scr_armorcheck_equipped_party(54) * 0.1);
/// END