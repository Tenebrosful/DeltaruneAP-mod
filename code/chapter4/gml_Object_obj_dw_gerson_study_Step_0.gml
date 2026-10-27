/// PATCH

/// AFTER
        if (myinteract == 999 && !d_ex())
        {
            myinteract = 0;
            marker.image_index = 0;
            global.interact = 0;
        }
    }
}
/// CODE
else if (obj_mainchara.x > 400 && obj_mainchara.x < 560 && obj_mainchara.y < 620 && doorcon == 0)
{
    if (scr_flag_get(850) < 3 && scr_flag_get(1547) == 1)
    {
        obj_mainchara.y = 620;
        doorcon = 1;
    }
}

if (doorcon == 1)
{
    global.interact = 1;
    doorcon = 2;
    scr_speaker("gerson");
    msgset(0, "* Well^1, I know y'all are very excited go behind that fireplace.../");
    msgnext("* But, would you three mind doin' me a quick favor first?/");
    msgnext("* There's a very shy pumpkin hiding around the \\cYNorthwest Library\\cW/.");
    msgnext("* If you could cheer 'em up and bring 'em here^1, I'll let ya head in./");
    scr_anyface_next("susie", "K");
    msgnext("* Uhhhhhh..^1. Okay./%");
    d_make();
}

if (doorcon == 2 && obj_mainchara.x > 400 && obj_mainchara.x < 560 && obj_mainchara.y < 620)
    obj_mainchara.y = 620;

if (doorcon == 2 && !d_ex())
{
    global.interact = 0;
    obj_mainchara.y = 620;
    doorcon = 0;
}
/// END