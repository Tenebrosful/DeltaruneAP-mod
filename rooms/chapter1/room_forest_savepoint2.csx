#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_forest_savepoint2()
{
  var room = Data.Rooms.ByName("room_forest_savepoint2");

  AddObjectToRoom(room, "obj_npc_room", 505, 200, 2, 2, 2);

  room.GameObjects.ByInstanceID(102091).X = 600;
  room.GameObjects.ByInstanceID(102091).Y = 360;

  room.GameObjects.ByInstanceID(102090).X = 560;
  room.GameObjects.ByInstanceID(102090).Y = 320;
}