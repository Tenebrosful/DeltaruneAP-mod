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