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

void MoveObjectTo(UndertaleRoom.GameObject obj, int x, int y, float scaleX, float scaleY)
{
  obj.X = x;
  obj.Y = y;
  obj.ScaleX = scaleX;
  obj.ScaleY = scaleY;
}