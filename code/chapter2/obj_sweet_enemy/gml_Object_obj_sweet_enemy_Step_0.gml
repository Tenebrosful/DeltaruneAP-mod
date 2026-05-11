/// PATCH

/// REPLACE
    global.flag[34] = 0;
    learnedhowtoact = 1;
    global.canact[myself][2] = 0;
/// CODE
    AP_sendLocation(246)
    learnedhowtoact = 1;
    global.canact[myself][2] = 0;
/// END

/// REPLACE
    global.flag[34] = 0;
    dancecon = 2.5;
/// CODE
    AP_sendLocation(246)
    dancecon = 2.5;
/// END