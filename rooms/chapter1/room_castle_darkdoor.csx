#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_castle_darkdoor()
{
  var room = Data.Rooms.ByName("room_castle_darkdoor");

  AddObjectToRoom(room, "obj_doorA", 400, 240, 1, 4, 2);
  AddObjectToRoom(room, "obj_markerB", 440, 280, 1);
}