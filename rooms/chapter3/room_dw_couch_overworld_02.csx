void Load_room_dw_couch_overworld_02()
{
  var room = Data.Rooms.ByName("room_dw_couch_overworld_02");

  AddObjectToRoom(room, "obj_shortcut_door", 1000, 2748, 0, 2, 2);
  AddObjectToRoom(room, "obj_markerAny", 1018, 2800, 0, 1, 1, 23);
}