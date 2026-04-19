#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_forest_area5()
{
  var room = Data.Rooms.ByName("room_forest_area5");

  AddObjectToRoom(room, "obj_markerX", 20, 520, 1);
  AddObjectToRoom(room, "obj_musicer_forest", 0, 0, 0, 1, 1);
}