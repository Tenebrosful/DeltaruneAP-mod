/// PATCH

/// REPLACE
    if (global.plot < 440)
/// CODE
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 1)
/// END

/// BEFORE
with (weirdlight)
/// CODE
if (room == room_dw_garden_hopschef)
    AP_sendLocation(270);

if (room == room_dw_garden_aquahole_left)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(286);
}

if (room == room_dw_garden_aquadash)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(285);
}

if (room == room_dw_cliff_climbrefresher)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(291);
}

if (room == room_dw_cliff_netskieclimb)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(292);
}

if (room == room_dw_cliff_seth_miniboss)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(293);
}

if (room == room_dw_fcastle_foyer)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(310);
}

if (room == room_dw_fcastle_blueroom)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(318);
}

if (room == room_dw_fcastle_right_puzzle)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(328);
}

if (room == room_dw_fcastle_green_checkpoint)
{
    global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    AP_sendLocation(346);
}

if (room == room_dw_fcastle_final_save)
    AP_sendLocation(347);

if (room == room_dw_fcastle_top_pinkdoor)
    AP_sendLocation(348);
/// END