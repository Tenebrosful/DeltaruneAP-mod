void AddObjectToRoom(UndertaleRoom room, string objName, int x, int y, int layerOrder, float scaleX = 1, float scaleY = 1)
{
  var newObject = new UndertaleRoom.GameObject()
  {
    InstanceID = Data.GeneralInfo.LastObj++,
    ObjectDefinition = Data.GameObjects.ByName(objName),
    X = x,
    Y = y,
    ScaleX = scaleX,
    ScaleY = scaleY,
  };
  room.GameObjects.Add(newObject);
  room.Layers[layerOrder].InstancesData.Instances.Add(newObject);
}

void AddTileToRoom(UndertaleRoom room, UndertaleBackground bg, int x, int y, int layerOrder, int sourceX, int sourceY, uint width, uint height, int tiledepth = 999999)
{
  var tile = new UndertaleRoom.Tile()
  {
    InstanceID = Data.GeneralInfo.LastTile++,
    BackgroundDefinition = bg,
    X = x,
    Y = y,
    SourceX = sourceX,
    SourceY = sourceY,
    Width = width,
    Height = height,
    TileDepth = tiledepth
  };

  room.Tiles.Add(tile);
  room.Layers[layerOrder].TilesData.TileData[x / width][y / height] = tile.InstanceID;
}

void ChangeTile(UndertaleRoom room, int x, int y, int layerOrder, uint id)
{
  room.Layers[layerOrder].TilesData.TileData[y][x] = id;
}

UndertaleRoom CreateRoom(string name, uint width, uint height, uint flags)
{
  var room = new UndertaleRoom()
  {
    Name = Data.Strings.MakeString(name),
    Caption = Data.Strings.MakeString(""),
    Width = width,
    Height = height,
    Flags = flags,
  };

  Data.Rooms.Add(room);
  Data.GeneralInfo.RoomOrder.Add(new UndertaleResourceById<UndertaleRoom, UndertaleChunkROOM>() { Resource = room });

  return room;
}

UndertaleRoom CreateLayer(UndertaleRoom room, string layerName, UndertaleRoom.LayerType layerType = UndertaleRoom.LayerType.Instances)
{
  var layer = new UndertaleRoom.Layer()
  {
    LayerName = layerName,
    Data = new UndertaleRoom.Layer.LayerInstancesData(),
    LayerType = UndertaleRoom.LayerType.Instances
  };

  room.Layers.Add(layer);
}