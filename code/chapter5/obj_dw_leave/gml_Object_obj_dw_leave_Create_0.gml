/// PATCH

/// APPEND

if (global.plot >= 200)
{
    if (variable_global_exists("pre_hospital_room"))
        nextroom = global.pre_hospital_room;
    else
        nextroom = 122;
}

if (global.plot >= 280)
    nextroom = 150;

if (room == room_dw_garden_hospital || room == room_dw_garden_aquadash)
    nextroom = 53;

/// END