/// IMPORT
function scr_keyitemget(arg0)
{
    if (arg0 == 13)
        global.customflags[14] += 1;
    
    if (scr_keyitemcheck(13) == 0 || arg0 != 13)
    {
        item = arg0;
        
        if (item == 4 || item == 6 || item == 7)
        {
            item = 4;
            global.customflags[6] += 1;
        }
        
        if (scr_keyitemcheck(4) == 0 || item != 4)
        {
            i = 0;
            loop = 1;
            noroom = 0;
            global.item[12] = 999;
            
            while (loop == 1)
            {
                if (global.keyitem[i] == 0)
                {
                    global.keyitem[i] = item;
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
}
