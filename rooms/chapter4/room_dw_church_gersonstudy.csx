void Load_room_dw_church_gersonstudy()
{
  var room = Data.Rooms.ByName("room_dw_church_gersonstudy");

  AddObjectToRoom(room, "obj_npc_room", 600, 720, 0, 2, 2);

  room.GameObjects.ByInstanceID(102615).Y = 640;
}