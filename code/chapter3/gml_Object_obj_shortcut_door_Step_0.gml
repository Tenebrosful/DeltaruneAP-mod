/// PATCH

/// AFTER
            global.entrance = 23;
/// CODE
            global.shortcut_border = 1;

            if (door_location == 100)
                global.shortcut_border = 2; // additional check to instantly set the border if leaving the Couch Cliffs, but not any other location
/// END