/// PATCH

/// AFTER
                    gameover = instance_create_depth(global.heartx, global.hearty, -100, obj_gameover_heart_effect);
                    gameover.special = 1;
/// CODE
                    if (instance_exists(obj_archipelago_client) && obj_archipelago_client.AP_isAuthenticated())
                    {
                        obj_archipelago_client.AP_sendDeathlink();
                    }
/// END

/// BEFORE
                if ((myhealth - hazard.damage) <= 0)
                    _fatal = 1;
/// CODE
                if (global.maxhp[1] < 1)
                    myhealth = 0;
/// END