#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_cyber_teacup_final()
{
  var room = Data.Rooms.ByName("room_dw_cyber_teacup_final");

  AddObjectToRoom(room, "obj_savepoint", 2520, 1680, 0, 2, 2);

  room.GameObjects.ByInstanceID(102266).X = 2520;
  room.GameObjects.ByInstanceID(102266).Y = 1720;
}