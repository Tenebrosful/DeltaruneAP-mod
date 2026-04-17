#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_cc_6f()
{
  var room = Data.Rooms.ByName("room_cc_6f");

  AddObjectToRoom(room, "obj_readable_room1", 1120, 160, 3, 6, 2);
  AddObjectToRoom(room, "obj_readable_room1", 1120, 80, 3, 6, 6);
}