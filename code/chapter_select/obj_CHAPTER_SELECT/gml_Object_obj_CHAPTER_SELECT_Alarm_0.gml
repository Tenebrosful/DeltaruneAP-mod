/// IMPORT

if (obj_archipelago_client.AP_isAuthenticated())
{
    detect_no_chapters();
    change_state(_current_state);
}
else
{
    room_goto(PLACE_ARCHIPELAGO_CONNECT);
}

enum UnknownEnum
{
    Value_4 = 4
}
