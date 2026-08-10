#load "../room_helper.csx"

void Load_PLACE_ARCHIPELAGO_CONNECT()
{
  var room = Data.Rooms.ByName("PLACE_ARCHIPELAGO_CONNECT");
  CreateLayer(room, "Instances");
  CreateLayer(room, "Background", UndertaleRoom.LayerType.Background);
  var ui = CreateLayer(room, "UI");
  ui.LayerDepth = -100;
  AddObjectToRoom(room, "obj_archipelago_connect_ui", 0, 0, 2, 1, 1);  
}

void Create_GameObjects_PLACE_ARCHIPELAGO_CONNECT()
{
  var flags = UndertaleRoom.RoomEntryFlags.IsGMS2_3 | UndertaleRoom.RoomEntryFlags.IsGMS2;

  var room = CreateRoom("PLACE_ARCHIPELAGO_CONNECT", (uint)640, (uint)480, flags);
}