void Load_room_dw_church_jackenstein()
{
  var room = Data.Rooms.ByName("room_dw_church_jackenstein");

  AddObjectToRoom(room, "obj_npc_room", 320, 170, 0, 2, 2);
  AddObjectToRoom(room, "obj_darkslide_new", 520, 280, 0, 2, 20);
}