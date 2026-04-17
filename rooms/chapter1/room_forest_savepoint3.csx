#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_forest_savepoint3()
{
  var room = Data.Rooms.ByName("room_forest_savepoint3");

  AddObjectToRoom(room, "obj_readable_room1", 520, 200, 2, 2, 4);
  AddObjectToRoom(room, "obj_npc_room", 280, 360, 2, 2, 2);
}