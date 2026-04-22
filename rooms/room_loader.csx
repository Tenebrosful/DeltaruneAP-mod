#load "all_chapters\all_chapters_rooms.csx"
#load "chapter1\chapter1_rooms.csx"
#load "chapter2\chapter2_rooms.csx"
#load "chapter_select\chapter_select_rooms.csx"

void Build_rooms(int chapter)
{
  if (chapter > 0) Load_all_chapters_rooms();
   
  switch (chapter)
  {
    case 0: Load_chapter_select_rooms(); break;
    case 1: Load_chapter1_rooms(); break;
    case 2: Load_chapter2_rooms(); break;
    default: return;
  }
}

void Build_Early_Rooms(int chapter){
  switch (chapter)
  {
    case 0: Load_Early_Chapter_Select_Rooms(); break;
    
    default: return;
  }
}