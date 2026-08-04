/// PATCH

/// REPLACE
        swanboat.sprite_index = spr_swanboat_squish;
/// CODE
        if (global.fastswan)
            swanboat.sprite_index = spr_swanboat_squish_fast;
        else
            swanboat.sprite_index = spr_swanboat_squish;
/// END