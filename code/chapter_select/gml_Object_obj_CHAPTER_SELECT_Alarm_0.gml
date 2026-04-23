/// IMPORT

if (obj_archipelago_client.AP_isAuthenticated())
    change_state(UnknownEnum.Value_4);
else
    room_goto(PLACE_ARCHIPELAGO_CONNECT);

enum UnknownEnum
{
    Value_4 = 4
}
