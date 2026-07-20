/// PATCH

/// REPLACE
            msgset(0, scr_itemget_anytype_text(65, "item"));
/// CODE
        msgsetloc(0, string("* (You got {0})/%", AP_get_location_reward_text(287)));
        AP_sendLocation(287);
/// END

/// REPLACE
                variation = 1;
/// CODE
                variation = 0;
/// END