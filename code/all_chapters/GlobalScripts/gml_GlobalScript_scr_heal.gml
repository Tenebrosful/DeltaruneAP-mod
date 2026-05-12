/// PATCH

/// AFTER
    hltarget = global.char[arg0];
    _curhp = global.hp[hltarget];
/// CODE

    if (global.maxhp[hltarget] < 0)
        return 0;
/// END