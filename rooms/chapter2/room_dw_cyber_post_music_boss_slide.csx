#load "..\room_helper.csx"

using UndertaleModLib.Util;

Random rng = new Random();

int Get_random_weird_floor()
{
  var possibilites = new[] {
    105, 106, 107, 108, 109, 110, 111,
    144, 145, 146, 147, 148, 149, 150,
    157, 158, 159, 160, 161, 162, 163
  };

  return possibilites[rng.Next(0, possibilites.Length)];
}

void Load_room_dw_cyber_post_music_boss_slide()
{
  var room = Data.Rooms.ByName("room_dw_cyber_post_music_boss_slide");

  room.GameObjects.ByInstanceID(102618).X = 240;
  room.GameObjects.ByInstanceID(102618).Y = 2280;
  room.GameObjects.ByInstanceID(102618).ScaleX = 1;
  room.GameObjects.ByInstanceID(102618).ScaleY = 7;

  room.GameObjects.ByInstanceID(102617).X = 280;
  room.GameObjects.ByInstanceID(102617).Y = 2320;
  room.GameObjects.ByInstanceID(102617).ScaleX = 6;
  room.GameObjects.ByInstanceID(102617).ScaleY = 1;

  AddObjectToRoom(room, "obj_solidblocksized", 520, 2320, 1, 1, 5);
  AddObjectToRoom(room, "obj_solidblocksized", 280, 2480, 1, 2, 2);
  AddObjectToRoom(room, "obj_solidblocksized", 440, 2480, 1, 2, 2);
  AddObjectToRoom(room, "obj_readable_room1", 360, 2560, 1, 4, 6);
  AddObjectToRoom(room, "obj_markerX", 380, 2480, 1, 1, 1);
  AddObjectToRoom(room, "obj_dw_leave_ch4", 400, 2420, 1, 1, 1);

  var bg = Data.Backgrounds.ByName("bg_dw_cyber_tileset");
  // New floor
  // Upperpart

  var startx = 280 / 40; var endx = 480 / 40;
  var starty = 2360 / 40; var endy = 2440 / 40;
  for (int x = startx; x <= endx; x++)
  {
    for (int y = starty; y <= endy; y++)
    {
      ChangeTile(room, x, y, 6, (uint)Get_random_weird_floor());
    }
  }

  startx = 360 / 40; endx = 400 / 40;
  starty = 2480 / 40; endy = 2520 / 40;
  for (int x = startx; x <= endx; x++)
  {
    for (int y = starty; y <= endy; y++)
    {
      ChangeTile(room, x, y, 6, (uint)Get_random_weird_floor());
    }
  }
}