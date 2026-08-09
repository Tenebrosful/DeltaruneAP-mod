/// PATCH

/// REPLACE
            if (global.hp[global.char[target]] < 1)
/// CODE
            if (global.hp[global.char[target]] < 1 && global.maxhp[global.char[target]] > 0)
/// END

/// AFTER
                global.hp[global.char[target]] -= hpdiff;
/// CODE
                obj_archipelago_client.AP_sendDamagelink(hpdiff)
/// END