void Add_obj_fusionmenu()
{
  var obj_custommenu = Data.GameObjects.ByName("obj_custommenu");
  var obj_fusionmenu = Data.GameObjects.ByName("obj_fusionmenu");
  obj_fusionmenu.ParentId = obj_custommenu;
}