/// PATCH

/// REPLACE
for (i = 0; i < 4; i += 1)
{
    global.maxhp[i] = remmaxhp[i];
    
    if (global.hp[i] >= global.maxhp[i])
        global.hp[i] = global.maxhp[i];
}
/// CODE
for (i = 0; i < 4; i += 1)
{
    global.maxhp[i] = remmaxhp[i];
    global.hp[i] = global.maxhp[i];
}
/// END