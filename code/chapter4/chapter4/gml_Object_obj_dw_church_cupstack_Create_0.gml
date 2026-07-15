/// PATCH

/// REPLACE
    if (global.plot < 185)
        instance_destroy();
/// CODE
    if (global.customflags[31] == 0)
        instance_destroy();
/// END

/// REPLACE
    if (global.plot < 185)
    {
        instance_destroy();
    }
/// CODE
    if (global.customflags[31] == 0)
    {
        instance_destroy();
    }
/// END