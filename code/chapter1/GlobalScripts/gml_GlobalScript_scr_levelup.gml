/// IMPORT
function scr_levelup()
{
    var krismaxhp = 120;
    var susiemaxhp = 140;
    var ralseimaxhp = 100;
    var encountercountflag = global.custom_flags_indexes.chapter1_encounter_defeated;
    var attackpluscountflag = global.custom_flags_indexes.chapter1_attack_plus_gained;
    var gainedstats = 0;
    global.customflags[encountercountflag]++;
    
    if (global.maxhp[1] < krismaxhp || global.maxhp[2] < susiemaxhp || global.maxhp[3] < ralseimaxhp)
    {
        gainedstats = 1;
        
        if (global.maxhp[1] < krismaxhp)
        {
            global.maxhp[1] += 2;
            global.hp[1] += 2;
        }
        
        if (global.maxhp[2] < susiemaxhp)
        {
            global.maxhp[2] += 2;
            global.hp[2] += 2;
        }
        
        if (global.maxhp[3] < ralseimaxhp)
        {
            global.maxhp[3] += 2;
            global.hp[3] += 2;
        }
        
        if ((global.customflags[encountercountflag] % 2) == 0)
            global.maxhp[2] += 1;
    }
    
    if ((global.customflags[encountercountflag] % 10) == 0 && global.customflags[attackpluscountflag] < 2)
    {
        gainedstats = 1;
        global.at[1] += 1;
        global.at[2] += 1;
        global.mag[2] += 1;
        global.at[3] += 1;
        global.mag[3] += 1;
        global.customflags[attackpluscountflag]++;
    }
    
    if (global.maxhp[1] > 0)
        global.maxhp[1] = clamp(global.maxhp[1], 10, krismaxhp);
    
    if (global.maxhp[2] > 0)
        global.maxhp[2] = clamp(global.maxhp[2], 10, susiemaxhp);
    
    if (global.maxhp[3] > 0)
        global.maxhp[3] = clamp(global.maxhp[3], 10, ralseimaxhp);
    
    for (var _i = 1; _i < 4; _i++)
        global.hp[_i] = min(global.hp[_i], global.maxhp[_i]);
    
    return gainedstats;
}
