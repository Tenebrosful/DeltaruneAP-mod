#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_mansion_entrance()
{
  var room = Data.Rooms.ByName("room_dw_mansion_entrance");

  AddObjectToRoom(room, "obj_npc_room", 800, 160, 0, 2, 2);
}