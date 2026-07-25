/// PATCH

/// REPLACE
    var fought_any = false;
    var prop_list = scr_get_ini_value_all_slots(global.chapter, "Ch4Boss");
    
    for (var i = 0; i < array_length(prop_list); i++)
    {
        var prop = prop_list[i][0];
        var value = prop_list[i][1];
        
        if (value == 1)
        {
            fought_any = true;
            break;
        }
    }
    
    global.tempflag[100] = fought_any ? 1 : 0;
/// CODE
    global.tempflag[100] = 1
/// END