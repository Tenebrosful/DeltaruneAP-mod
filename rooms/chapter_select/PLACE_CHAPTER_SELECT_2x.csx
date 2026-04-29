#load "..\room_helper.csx"

void Load_PLACE_CHAPTER_SELECT_2x()
{
  var room = Data.Rooms.ByName("PLACE_CHAPTER_SELECT_2x");
  AddObjectToRoom(room, "obj_time", 0, 0, 0, 1, 1);
}
