/// PATCH .ignore if CHAPTER_1 || CHAPTER_2

/// REPLACE
grazetpfactor -= (scr_armorcheck_equipped_party(3) * 0.2);
grazetpfactor -= (scr_armorcheck_equipped_party(9) * 0.25);
grazetimefactor += (scr_armorcheck_equipped_party(14) * 0.1);
grazetimefactor -= (scr_armorcheck_equipped_party(3) * 0.2);
grazetimefactor -= (scr_armorcheck_equipped_party(9) * 0.25);
/// CODE
if (!global.AP_pink_twin_ribbon_unnerf)
{
    grazetpfactor -= (scr_armorcheck_equipped_party(3) * 0.2);
    grazetpfactor -= (scr_armorcheck_equipped_party(9) * 0.25);
    grazetimefactor -= (scr_armorcheck_equipped_party(3) * 0.2);
    grazetimefactor -= (scr_armorcheck_equipped_party(9) * 0.25);
}

grazetimefactor += (scr_armorcheck_equipped_party(14) * 0.1);
/// END