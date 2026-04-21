/// PATCH

/// REPLACE
        var _sprites = [spr_teacup_kris, spr_teacup_kris, spr_teacup_susie, spr_teacup_ralsei];
/// CODE
        var _sprites = [spr_teacup_kris, spr_teacup_kris, spr_teacup_susie, spr_teacup_ralsei, spr_teacup_noelle];
/// END

/// REPLACE
            var _sprites = [spr_kris_fall_ball, spr_kris_fall_ball, spr_susie_dw_fall_ball, spr_ralsei_teacup_enter];
/// CODE
            var _sprites = [spr_kris_fall_ball, spr_kris_fall_ball, spr_susie_dw_fall_ball, spr_ralsei_teacup_enter, spr_noelle_shocked_dw];
/// END

/// REPLACE
            var _sprites = [spr_kris_dw_land_example_dark, spr_kris_dw_land_example_dark, spr_susie_dw_landed, spr_teacup_ralsei_land];
/// CODE
            var _sprites = [spr_kris_dw_land_example_dark, spr_kris_dw_land_example_dark, spr_susie_dw_landed, spr_teacup_ralsei_land, spr_noelle_hurt];
/// END

/// APPEND

if (con == 1 && !instance_exists(obj_dialoguer))
{
    global.interact = 0;
    con = 0;
}
/// END