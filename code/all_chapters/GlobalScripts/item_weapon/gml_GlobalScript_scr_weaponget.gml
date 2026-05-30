/// IMPORT
function scr_weaponget(arg0)
{
    noroom = 0;
    
    var __itemcount = 0;
    __weapon[0] = arg0;
    
    for (__i = 0; __i < #GetMaxWeapon(); __i++)
    {
        if (global.weapon[__i] != 0)
        {
            __weapon[__itemcount + 1] = global.weapon[__i];
            __itemcount++;
        }
    }
    
    if (__itemcount >= #GetMaxWeapon())
    {
        noroom = 1;
    }
    else
    {
        for (__i = 0; __i < #GetMaxWeapon(); __i++)
        {
            if (__i <= __itemcount)
                global.weapon[__i] = __weapon[__i];
            else
                global.weapon[__i] = 0;
        }
    }
    
    script_execute(scr_weaponinfo_all);
}
