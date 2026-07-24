/// PATCH

/// APPEND

if (room == room_field3)
    AP_sendLocation(31);

if (room == room_forest_savepoint1)
{
    AP_sendLocation(32);
}

if (room == room_forest_savepoint2 && global.customflags[global.custom_flags_indexes.use_bake_sale_ticket])
    AP_sendLocation(33);

if (room == room_forest_fightsusie)
    AP_sendLocation(34);
/// END