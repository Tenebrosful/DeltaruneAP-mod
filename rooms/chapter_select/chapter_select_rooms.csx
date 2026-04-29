#load "PLACE_ARCHIPELAGO_CONNECT.csx"
#load "PLACE_CHAPTER_SELECT_2x.csx"

void Load_chapter_select_rooms()
{
  Load_PLACE_ARCHIPELAGO_CONNECT();
  Load_PLACE_CHAPTER_SELECT_2x();
}

void Load_Early_Chapter_Select_Rooms(){
  Create_GameObjects_PLACE_ARCHIPELAGO_CONNECT();
}