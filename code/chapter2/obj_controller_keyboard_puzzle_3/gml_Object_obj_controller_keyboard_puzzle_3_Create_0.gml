/// PATCH

/// AFTER
con = 0;
realral = 0;
realsus = 0;
/// CODE
realnoe = 0;
/// END

/// AFTER
        if (name == "ralsei")
            other.realral = id;
/// CODE
        
        if (name == "noelle")
            other.realnoe = id;
/// END

/// REPLACE
if (global.flag[420] == 1 || realral == 0 || realsus == 0)
/// CODE
if (global.flag[420] == 1 || (!scr_havechar(3) && !scr_havechar(4)))
/// END

/// APPEND
npcnoe = 0;
/// END