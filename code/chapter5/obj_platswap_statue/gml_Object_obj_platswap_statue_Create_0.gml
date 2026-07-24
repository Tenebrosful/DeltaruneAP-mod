/// PATCH

/// BEFORE
hit = 0;
/// CODE
con = 0;
platcon = 0;
timer = 0;
init = 0;
siner = 0;
endcustom = false;
dojumping = false;
landed = false;
endjumping = false;
aqua_autodepth = 0;
knives = [];
/// END

/// APPEND
wind_sound = snd_loop(snd_strongwind_loop);
snd_volume(wind_sound, 0, 0);

petal_step = function()
{
    if (y < 0)
        instance_destroy();
};

petalwindspeedmin = 15;
petalwindspeedmax = 27;
petalwindspeed = petalwindspeedmin;

make_petal = function(arg0, arg1, arg2)
{
    var _petal = instance_create_depth(arg0, arg1, 11000, obj_marker_fancy);
    _petal.image_xscale = -2;
    _petal.image_yscale = 2;
    _petal.step_func = method(_petal, petal_step);
    _petal.direction = 130 + random_range(-5, 5);
    _petal.speed = arg2;
    _petal.gravity = -0.05;
    _petal.sprite_index = spr_leaf_fall;
    _petal.image_speed = _petal.speed / 20;
};

petalwinds = false;
hat = scr_dark_marker(0, 0, spr_ralsei_hat);
hat.visible = false;
///END