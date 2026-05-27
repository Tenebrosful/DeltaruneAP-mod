#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_city_man()
{
  var room = Data.Rooms.ByName("room_dw_city_man");

  AddObjectToRoom(room, "obj_egg_counter_text", 2120, 80, 0, 10, 10);
}