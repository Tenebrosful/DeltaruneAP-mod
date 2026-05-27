#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_man()
{
  var room = Data.Rooms.ByName("room_man");

  AddObjectToRoom(room, "obj_egg_counter_text", -50, 40, 0, 10, 10);
}