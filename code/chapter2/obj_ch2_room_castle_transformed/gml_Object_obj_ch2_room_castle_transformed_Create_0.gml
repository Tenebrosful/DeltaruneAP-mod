/// PATCH

/// BEFORE
with (book_pillar)
{
/// CODE
if (global.plot == 12)
    scr_setparty(1, 1);

if (global.plot >= 50 && global.plot < 70)
    scr_setparty(1, 1);

if (global.plot > 80 && global.plot < 200 && scr_sideb_get_phase() < 3)
    scr_setparty(1, 1);

/// END

/// REPLACE
if (global.plot >= 200 && global.flag[443] == 0)
    con = 0;
/// CODE
if (global.plot >= 200 && global.flag[443] == 0)
    con = 0;
else if (global.plot >= 70 && global.plot < 120)
    con = 3;
/// END