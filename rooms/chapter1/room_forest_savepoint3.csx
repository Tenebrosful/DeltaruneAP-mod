#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_forest_savepoint3()
{
  var room = Data.Rooms.ByName("room_forest_savepoint3");

  AddObjectToRoom(room, "obj_npc_room", 520, 180, 2, 1, 1);
  AddObjectToRoom(room, "obj_musicer_forest", 0, 0, 0, 1, 1);
}