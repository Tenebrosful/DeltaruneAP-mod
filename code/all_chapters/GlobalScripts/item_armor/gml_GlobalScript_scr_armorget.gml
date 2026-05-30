/// IMPORT
function scr_armorget(arg0)
{
    noroom = false;
    
    var __itemcount = 0;
    __armor[0] = arg0;
    
    for (__i = 0; __i < #GetMaxArmor(); __i++)
    {
        if (global.armor[__i] != 0)
        {
            __armor[__itemcount + 1] = global.armor[__i];
            __itemcount++;
        }
    }
    
    if (__itemcount >= #GetMaxArmor())
    {
        noroom = 1;
    }
    else
    {
        for (__i = 0; __i < #GetMaxArmor(); __i++)
        {
            if (__i <= __itemcount)
                global.armor[__i] = __armor[__i];
            else
                global.armor[__i] = 0;
        }
    }
    
    script_execute(scr_armorinfo_all);
}