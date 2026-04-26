#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_city_poppup()
{
  var room = Data.Rooms.ByName("room_dw_city_poppup");

  AddObjectToRoom(room, "obj_savepoint", 1040, 400, 0, 2, 2);

  room.GameObjects.ByInstanceID(103751).X = 1040;
  room.GameObjects.ByInstanceID(103751).Y = 400;
}