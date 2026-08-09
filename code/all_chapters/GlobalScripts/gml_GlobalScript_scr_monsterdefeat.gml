/// PATCH

#if !CHAPTER_1
/// REPLACE
                global.flag[global.flag[54]] = global.flag[50];
/// CODE
                if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE && string_pos("room_dw_city_", room_get_name(room)) != 0)
                    global.flag[global.flag[54]] = global.flag[50];
/// END
#endif