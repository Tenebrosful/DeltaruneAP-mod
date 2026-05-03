/// PATCH

/// APPEND
if (name == "kris")
{
    if (sword == true)
        global.customflags[29] = 1;
}
/// END

/// AFTER
                    gameover = instance_create_depth(global.heartx, global.hearty, -100, obj_gameover_heart_effect);
                    gameover.special = 1;
/// CODE
                    if (instance_exists(obj_archipelago_client) && obj_archipelago_client.AP_isAuthenticated())
                    {
                        obj_archipelago_client.AP_sendDeathlink();
                    }
/// END