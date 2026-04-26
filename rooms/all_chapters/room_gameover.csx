#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_gameover()
{
  var room = Data.Rooms.ByName("room_gameover");

  AddObjectToRoom(room, "obj_deathlink_text", 0, 0, 0);
}