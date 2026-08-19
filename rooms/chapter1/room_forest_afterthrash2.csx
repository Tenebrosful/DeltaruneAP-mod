#load "../room_helper.csx"

using UndertaleModLib.Util;

void Load_room_forest_afterthrash2()
{
  var room = Data.Rooms.ByName("room_forest_afterthrash2");

  AddObjectToRoom(room, "obj_npc_room", 320, 160, 2, 1, 1);
}