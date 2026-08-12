/// PATCH

/// AFTER
            msgsetloc(0, "... What?&A battle?/%", "obj_holywatercooler_enemy_slash_Step_0_gml_36_0");
/// CODE
            
            if (global.flag[encounterflag] != 0)
                msgsetloc(0, "... What?&A rematch?/%", "obj_holywatercooler_enemy_slash_Step_0_gml_36_0");
/// END

/// AFTER
            msgsetloc(0, "And suddenly,&you have drawn&me into a battle?/%", "obj_holywatercooler_enemy_slash_Step_0_gml_63_0");
/// CODE
            
            if (global.flag[encounterflag] != 0)
                msgsetloc(0, "And once again,&you have drawn&me into a battle?/%", "obj_holywatercooler_enemy_slash_Step_0_gml_63_0");
/// END