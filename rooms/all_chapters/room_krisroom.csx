#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_krisroom()
{
  var room = Data.Rooms.ByName("room_krisroom");

  AddObjectToRoom(room, "obj_readable_room1", 180, 90, 0, 1, 1);
}