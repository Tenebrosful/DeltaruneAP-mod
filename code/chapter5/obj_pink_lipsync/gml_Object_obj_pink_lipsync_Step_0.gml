/// PATCH

/// REPLACE
        if (noteindex < maxnote && noteend[noteindex - 1] == notetime[noteindex] && noteanim[noteindex] == 0)
/// CODE
        if (noteindex < maxnote && noteend[noteindex - 1] == notetime[noteindex])
/// END

/// REPLACE
if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
{
    lipsync = false;
    singing = true;
}
else if (!lipsync)
{
    lipsync = true;
    singing = false;
}
/// CODE
switch (array_length(ftime))
{
    case 0:
        lipsync = false;
        singing = true;
        break;
    
    case 2:
        if (trackpos < ftime[0] || trackpos > ftime[1])
        {
            lipsync = false;
            singing = true;
        }
        else if (!lipsync)
        {
            lipsync = true;
            singing = false;
        }
        break;

    case 4:
        if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
        {
            lipsync = false;
            singing = true;
        }
        else if (!lipsync)
        {
            lipsync = true;
            singing = false;
        }
        break;

    case 6:
        if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || (trackpos > ftime[3] && trackpos < ftime[4]) || trackpos > ftime[5])
        {
            lipsync = false;
            singing = true;
        }
        else if (!lipsync)
        {
            lipsync = true;
            singing = false;
        }
        break;

    case 8:
        if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || (trackpos > ftime[3] && trackpos < ftime[4]) || (trackpos > ftime[5] && trackpos < ftime[6]) || trackpos > ftime[7])
        {
            lipsync = false;
            singing = true;
        }
        else if (!lipsync)
        {
            lipsync = true;
            singing = false;
        }
        break;
}
/// END