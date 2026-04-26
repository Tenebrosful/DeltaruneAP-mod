#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_mansion_east_4f_b()
{
  var room = Data.Rooms.ByName("room_dw_mansion_east_4f_b");

  AddObjectToRoom(room, "obj_npc_room_animated", 940, 280, 0, 2, 2);
  AddObjectToRoom(room, "obj_mansion_keygen_lock", 1040, 360, 0, 2, 2);

  AddObjectToRoom(room, "obj_savepoint", 100, 260, 0, 2, 2);

  room.GameObjects.ByInstanceID(106015).X = 100;
  room.GameObjects.ByInstanceID(106015).Y = 280;
}