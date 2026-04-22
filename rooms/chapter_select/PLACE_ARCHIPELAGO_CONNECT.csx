#load "..\room_helper.csx"

void Load_PLACE_ARCHIPELAGO_CONNECT()
{
  var room = Data.Rooms.ByName("PLACE_ARCHIPELAGO_CONNECT");
  CreateLayer(room, "Instances");
  CreateLayer(room, "Background", UndertaleRoom.LayerType.Background);
  AddObjectToRoom(room, "obj_archipelago_connect_ui", 0, 0, 0, 2, 3);
  AddObjectToRoom(room, "obj_archipelago_dummy", 608, 144, 0, 3, 3);
  AddObjectToRoom(room, "obj_archipelago_dummy", 576, 208, 0, 3, 3);
  
}

void Create_GameObjects_PLACE_ARCHIPELAGO_CONNECT(){
  var flags = UndertaleRoom.RoomEntryFlags.IsGMS2_3 | UndertaleRoom.RoomEntryFlags.IsGMS2;

  var room = CreateRoom("PLACE_ARCHIPELAGO_CONNECT", (uint)640, (uint)480, flags);
}