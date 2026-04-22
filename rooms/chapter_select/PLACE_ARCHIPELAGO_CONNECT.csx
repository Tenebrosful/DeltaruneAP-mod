#load "..\room_helper.csx"

void Load_PLACE_ARCHIPELAGO_CONNECT()
{
  var flags = UndertaleRoom.RoomEntryFlags.IsGMS2_3 | UndertaleRoom.RoomEntryFlags.IsGMS2;
  var room = CreateRoom("PLACE_ARCHIPELAGO_CONNECT", (uint)640, (uint)480, flags);
  CreateLayer(room, "instances");
  CreateLayer(room, "background", UndertaleRoom.LayerType.Background);
}