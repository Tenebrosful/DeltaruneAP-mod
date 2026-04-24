/// PATCH

/// AFTER
global.currentroom = scr_get_id_by_room_index(room);
/// CODE
global.startx = x;
global.starty = y;
/// END

/// AFTER
subx = 0;
suby = 0;
walkanim = 0;
/// CODE
AP_create();
/// END

/// REPLACE
        if (global.entrance == 23)
        {
            x = obj_markerw.x;
            y = obj_markerw.y;
        }
/// CODE
        if (global.entrance == 23)
        {
            x = obj_markerw.x;
            y = obj_markerw.y;
            
            if (room == room_forest_fightsusie && global.plot < 154)
            {
                x = 300;
                y = 220;
            }
        }
/// END