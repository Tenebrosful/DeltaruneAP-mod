/// PATCH

/// BEFORE
            if (damage > 0)
            {
                scr_tensionheal(round(points / 10));
                
                if (knightblock == 1)
                    obj_knight_enemy.blockanim = 1;
/// CODE
            if (object_index == obj_herosusie && scr_weaponcheck_equipped_any(54))
            {
                star = 1;
                var healamt = ceil(global.maxhp[2] * 0.1);
                scr_healitemspell(healamt);
            }
            
/// END

/// REPLACE
                if (object_index == obj_herokris)
                {
                    if (global.hp[2] < 0 && global.hp[3] < 0)
                        damage *= 2;
                    else if (global.hp[2] < 0 || global.hp[3] < 0)
                        damage *= 1;
                    else
                        damage = round(damage * 0.5);
                }
/// CODE
                if (object_index == obj_herokris)
                {
                    if (scr_weaponcheck_equipped(1, 26) || scr_weaponcheck_equipped(1, 11)) /// BlackShard, TwistedSwd
                        damage += 20;

                    if (global.hp[2] < 0 && global.hp[3] < 0)
                        damage *= 2;
                    else if (global.hp[2] < 0 || global.hp[3] < 0)
                        damage *= 1;
                    else
                        damage = round(damage * 0.5);
                }
/// END