/// PATCH

/// BEFORE
            defeatanim = instance_create_depth(x - 38, y - 2, depth, obj_defeatanim_shi);
/// CODE
            AP_sendLocation(1295);
/// END

/// REPLACE
            if (recruitable == 1 && global.flag[61] == 0)
            {
                global.flag[63] = 1;
                
                if (global.flag[global.monstertype[myself] + 600] != -1)
                {
                    global.flag[global.monstertype[myself] + 600] = -1;
                    _rtext = instance_create(global.monsterx[myself], global.monstery[myself] - 40, obj_recruitanim);
                    _rtext.image_index = 7;
                }
            }
/// CODE
            if (recruitable == 1 && global.flag[61] == 0 && !global.skiplostrecruit)
            {
                global.flag[63] = 1;
                _rtext = instance_create(global.monsterx[myself], global.monstery[myself] - 40, obj_recruitanim);
                _rtext.image_index = 7;
            }
/// END