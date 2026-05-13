/// PATCH

/// AFTER
endsu = -4;
suactorshadow = -4;
/// CODE
organiknpc2 = 0;
/// END

/// AFTER
    if (layer_sprite_get_sprite(spritesArray[i]) == 3020)
        organiknpc = scr_makenpc_fromasset(spritesArray[i]);
/// CODE
    
    if (layer_sprite_get_sprite(spritesArray[i]) == 2269 && global.plot >= 244)
    {
        organiknpc2 = scr_makenpc_fromasset(spritesArray[i]);
        organiknpc2.chose = -1;
    }
/// END