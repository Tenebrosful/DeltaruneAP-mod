using UndertaleModLib.Util;
using UndertaleModLib.Compiler;

void Load_collision_stuff()
{
  // Get or create the game object  
  var obj = CreateGameObject("obj_dw_leave_ch4");
  // Get the target object ID for collision  
  uint targetObjectId = (uint)Data.GameObjects.IndexOfName("obj_mainchara"); // ID of object to collide with

  // Create collision code entry  
  UndertaleCode collisionCode = UndertaleCode.CreateEmptyEntry(Data, $"gml_Object_obj_dw_leave_ch4_Collision_obj_mainchara");

  // Link to collision event  
  CodeImportGroup.LinkEvent(obj, collisionCode, EventType.Collision, targetObjectId);

  // Get or create the game object  
  obj = CreateGameObject("obj_dw_leave_discover_event");
  obj.Sprite = Data.Sprites.ByName("spr_event");
  obj.Visible = false;
  // Get the target object ID for collision  
  targetObjectId = (uint)Data.GameObjects.IndexOfName("obj_mainchara"); // ID of object to collide with

  // Create collision code entry  
  collisionCode = UndertaleCode.CreateEmptyEntry(Data, $"gml_Object_obj_dw_leave_discover_event_Collision_obj_mainchara");

  // Link to collision event  
  CodeImportGroup.LinkEvent(obj, collisionCode, EventType.Collision, targetObjectId);
}

public UndertaleGameObject CreateGameObject(string objectName)
{
    var obj = new UndertaleGameObject();
    obj.Name = Data.Strings.MakeString(objectName);
    Data.GameObjects.Add(obj);

    return obj;
}