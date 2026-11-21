/// PATCH

/// BEFORE
if (scr_debug() && keyboard_check_pressed(ord("I")))
/// CODE
if (scr_debug() && keyboard_check_pressed(ord("T")))
{
    phaseturns = 4;
    myattackchoice = 5;
    difficulty = 0;
    debug_turntimer = 1;
}
/// END