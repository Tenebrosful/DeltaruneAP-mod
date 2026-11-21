/// PATCH

/// REPLACE
if (safety_timer >= 30)
{
    trackpos += (delta_time / 1000000);
    
    if (trackpos >= song_length)
    {
        trackpos -= song_length;
        noteindex = 0;
    }
}
else if (trackpos < last_trackpos && safety_timer == 0)
{
    noteindex = 0;
}

while (noteindex < maxnote && !singing && trackpos > noteend[noteindex])
    noteindex++;

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
if (safety_timer >= 30)
{
    trackpos += (delta_time / 1000000);
    
    if (trackpos >= song_length)
    {
        trackpos -= song_length;
        noteindex = 0;
        findex = 0;
    }
}
else if (trackpos < last_trackpos && safety_timer == 0)
{
    noteindex = 0;
    findex = 0;
}

while (noteindex < maxnote && !singing && trackpos > noteend[noteindex])
    noteindex++;

while (findex < fcount && trackpos > fend[findex])
    findex++;

if (fcount > 0)
{
    if (trackpos < ftime[findex] || trackpos > fend[findex])
    {
        lipsync = false;
        singing = true;
    }
    else if (!lipsync)
    {
        lipsync = true;
        singing = false;
    }

    if (trackpos > fend[findex])
        findex++;
}
else
{
    lipsync = false;
    singing = true;
}
/// END

/// REPLACE
        if (noteindex < maxnote && noteend[noteindex - 1] == notetime[noteindex] && noteanim[noteindex] == 0)
/// CODE
        if (noteindex < maxnote && noteend[noteindex - 1] == notetime[noteindex])
/// END