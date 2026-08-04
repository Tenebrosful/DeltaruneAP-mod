#load "../room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_mansion_acid_tunnel()
{
  var room = Data.Rooms.ByName("room_dw_mansion_acid_tunnel");

  AddObjectToRoom(room, "obj_npc_room", 160, 200, 0, 1, 1);
}