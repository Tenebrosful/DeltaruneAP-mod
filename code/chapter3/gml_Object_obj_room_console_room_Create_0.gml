/// PATCH

/// PREPEND
global.customflags[29] = 0;

if (global.plot >= 280)
{
    if (global.flag[1055] >= 2 && global.customflags[27] != 2)
        global.customflags[27] = 1;
    else
        global.customflags[27] = 2;
}

/// END

/// REPLACE
    block = instance_create(star.x - 4, star.y - 16, obj_solidblocksized);
/// CODE
    block = instance_create(star.x - 4, star.y - 16, obj_solidblocksized);
    
    with (block)
        image_xscale = 0.25;
/// END

/// REPLACE
    if (global.plot >= 280)
        sprite_index = spr_dw_console_room_curtain_dark;
/// CODE
    if (global.plot >= 280 && global.customflags[27] == 1)
        sprite_index = spr_dw_console_room_curtain_dark;
/// END

/// REPLACE
if (global.plot >= 280)
{
    var lay_id = layer_get_id("BGCOLOR");
/// CODE
if (global.plot >= 280 && global.customflags[27] == 1)
{
    var lay_id = layer_get_id("BGCOLOR");
/// END