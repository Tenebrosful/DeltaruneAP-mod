/// PATCH

/// REPLACE
    if (global.plot < 440)
/// CODE
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 1)
/// END

/// BEFORE
with (weirdlight)
{
    depth = 895000;
/// CODE
if (room == room_dw_garden_hopschef)
    AP_sendLocation(270);

if (room == room_dw_garden_aquahole_left)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 2)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 2;
    
    AP_sendLocation(286);
}

if (room == room_dw_garden_aquadash)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 1)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 1;
    
    AP_sendLocation(285);
}

if (room == room_dw_cliff_climbrefresher)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 3)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 3;
    
    AP_sendLocation(291);
}

if (room == room_dw_cliff_netskieclimb)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 5)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 4;
    
    AP_sendLocation(292);
}

if (room == room_dw_cliff_seth_miniboss)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 5)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 5;
    
    AP_sendLocation(293);
}

if (room == room_dw_fcastle_foyer)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 6)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 6;
    
    AP_sendLocation(310);
}

if (room == room_dw_fcastle_blueroom)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 7)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 7;
    
    AP_sendLocation(318);
}

if (room == room_dw_fcastle_right_puzzle)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 8)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 8;
    
    AP_sendLocation(328);
}

if (room == room_dw_fcastle_green_checkpoint)
{
    if (global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] < 9)
        global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] = 9;
    
    AP_sendLocation(346);
}

if (room == room_dw_fcastle_final_save)
    AP_sendLocation(347);

if (room == room_dw_fcastle_top_pinkdoor)
    AP_sendLocation(348);
/// END
