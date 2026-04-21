#load "..\room_helper.csx"

using UndertaleModLib.Util;

void Load_room_dw_cyber_post_music_boss_slide()
{
  var room = Data.Rooms.ByName("room_dw_cyber_post_music_boss_slide");

  AddObjectToRoom(room, "obj_doorB", 280, 320, 2, 4, 2);
  AddObjectToRoom(room, "obj_markerA", 310, 400, 2);

  room.GameObjects.ByInstanceID(102618).X = 240;
  room.GameObjects.ByInstanceID(102618).Y = 2240;
  room.GameObjects.ByInstanceID(102618).ScaleX = 1;
  room.GameObjects.ByInstanceID(102618).ScaleY = 7;

  AddObjectToRoom(room, "obj_solidblocksized", 280, 2240, 1, 7, 1);
  AddObjectToRoom(room, "obj_solidblocksized", 520, 2120, 1, 1, 3);
  AddObjectToRoom(room, "obj_solidblocksized", 280, 2080, 1, 7, 1);
  AddObjectToRoom(room, "obj_solidblocksized", 240, 2040, 1, 2, 1);
  AddObjectToRoom(room, "obj_readable_room1", 240, 2120, 1, 2, 6);
  AddObjectToRoom(room, "obj_dw_leave_ch4", 400, 2180, 0, 1, 1);
}