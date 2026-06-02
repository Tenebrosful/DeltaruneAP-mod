/// IMPORT .ignore if CHAPTER_1
function scr_keyitemget(arg0)
{
    // Eggs
    if (arg0 == 950 || arg0 == 951 || arg0 == 952 || arg0 == 953)
        arg0 = 4;

    if (arg0 == 13)
        global.customflags[global.customflagsindexes.crystalamount] += 1;
    
    if (scr_keyitemcheck(13) == 0 || arg0 != 13)
    {
        i = 0;
        loop = 1;
        noroom = 0;
        global.item[12] = 999;
        
        while (loop == 1)
        {
            if (global.keyitem[i] == 0)
            {
                global.keyitem[i] = arg0;
                break;
            }
            
            if (i == 12)
            {
                noroom = 1;
                break;
            }
            
            i += 1;
        }
        
        script_execute(scr_keyiteminfo_all);
    }
}
