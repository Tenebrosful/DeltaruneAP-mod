/// PATCH

/// REPLACE
    var show_shine = global.tempflag[36] == 1 || global.tempflag[36] == 2;
/// CODE
    var show_shine = false;
/// END

/// REPLACE
if (global.chapter != 2 || global.flag[314] == 1)
/// CODE
if (global.chapter == 2 || global.flag[314] == 1)
/// END