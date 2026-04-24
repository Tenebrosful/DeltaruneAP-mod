/// PATCH

/// AFTER
global.fe = 0;
global.interact = 1;
global.msc = 460;
/// CODE

if (room == room_field3)
    AP_sendLocation(31);

if (room == room_forest_savepoint1)
{
    on = 1;
    AP_sendLocation(32);
}

if (room == room_forest_savepoint2)
    AP_sendLocation(33);

if (room == room_forest_fightsusie)
    AP_sendLocation(34);
/// END