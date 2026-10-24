/// PATCH

/// AFTER
            global.entrance = 23;
/// CODE
            global.tempflag[95] = 2; // used to ensure borders work properly with Couch Cliffs Couch Cliffs

            if (door_location == 100)
                global.tempflag[95] = 3; // additional check to instantly set the border if leaving the Couch Cliffs, but not any other location
/// END