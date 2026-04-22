#load "all_chapters\all_chapters_rooms.csx"
#load "chapter1\chapter1_rooms.csx"
#load "chapter2\chapter2_rooms.csx"

void Build_rooms(int chapter)
{
  if (chapter == 0) return;
  
  Load_all_chapters_rooms();
  switch (chapter)
  {
    case 1: Load_chapter1_rooms(); break;
    case 2: Load_chapter2_rooms(); break;
    default: return;
  }
}