/// PATCH

/// REPLACE
if (doorinit == 0)
{
    with (obj_doorAny)
    {
        if (doorRoom == room_dw_church_pianopiece_left)
        {
            doorRoom = room_dw_church_pianopiece_left_b;
            other.doorinit = 1;
        }
    }
}
/// CODE
/// END