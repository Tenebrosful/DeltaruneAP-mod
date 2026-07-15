/// PATCH

/// REPLACE
            if (sprite_index == spr_cc_fountainbg)
                depth += 10;
/// CODE
            if (sprite_index == spr_cc_fountainbg)
            {
                depth += 10;
                
                if (global.plot >= 244)
                    instance_destroy();
            }
/// END

/// REPLACE
if (global.plot < 231)
    fadetime = 60;
/// CODE
if (global.plot < 231 || global.plot >= 244)
    fadetime = 60;
/// END

/// REPLACE
if (global.plot >= 234)
/// CODE
if (global.plot >= 234 && global.plot < 244)
/// END

/// REPLACE
if (global.plot >= 240)
/// CODE
if (global.plot >= 240 && global.plot < 244)
/// END