#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_mansion_east_2f_d()
{
  var room = Data.Rooms.ByName("room_dw_mansion_east_2f_d");

  AddObjectToRoom(room, "obj_savepoint", 1680, 320, 0, 2, 2);

  room.GameObjects.ByInstanceID(105793).X = 1680;
  room.GameObjects.ByInstanceID(105793).Y = 240;
}