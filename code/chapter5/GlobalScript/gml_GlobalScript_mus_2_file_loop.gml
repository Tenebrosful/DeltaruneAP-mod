/// PATCH

/// AFTER
        looptrack = snd_init(arg1);
/// CODE

        if (global.AP_ost_shuffle)
        {
            if (variable_struct_exists(global.AP_ost_mapping, arg0))
            {
                arg0 = variable_struct_get(global.AP_ost_mapping, arg0)
            }

            if (variable_struct_exists(global.AP_ost_mapping, arg1))
            {
                arg1 = variable_struct_get(global.AP_ost_mapping, arg1)
            }
        }

/// END