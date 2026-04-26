#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_PLACE_FAILURE()
{
  var room = Data.Rooms.ByName("PLACE_FAILURE");

  AddObjectToRoom(room, "obj_deathlink_text", 0, 0, 0);
}