#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_field_start()
{
  var room = Data.Rooms.ByName("room_field_start");

  AddObjectToRoom(room, "obj_doorB", 280, 320, 2, 4, 2);
  AddObjectToRoom(room, "obj_markerA", 310, 400, 2);

  room.GameObjects.ByInstanceID(101197).X = 160;
  room.GameObjects.ByInstanceID(101197).Y = 360;
  room.GameObjects.ByInstanceID(101197).ScaleX = 3;
  room.GameObjects.ByInstanceID(101197).ScaleY = 1;
  
  AddObjectToRoom(room, "obj_soliddark", 360, 360, 3, 3, 1);
}