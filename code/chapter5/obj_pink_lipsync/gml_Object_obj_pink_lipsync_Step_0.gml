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
if (songname == "pink.ogg" || songname == "Flowerman_Arrangement.ogg")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else if (songname == "" || songname == "")
{
    if (trackpos < ftime[0] || (trackpos > ftime[1] && trackpos < ftime[2]) || trackpos > ftime[3])
    {
        in_ftime = false;
    }
    else if (!lipsync)
    {
        in_ftime = true;
    }
}
else
{
    in_ftime = false;
}

if (in_ftime == false)
{
    lipsync = false;
    singing = true;
}
else if (in_ftime == true)
{
    lipsync = true;
    singing = false;
}
/// END