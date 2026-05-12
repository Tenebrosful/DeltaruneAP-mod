#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_cyber_battle_maze_2()
{
  var room = Data.Rooms.ByName("room_dw_cyber_battle_maze_2");

  AddObjectToRoom(room, "obj_npc_room", 1300, 2700, 0, 2, 2);
}