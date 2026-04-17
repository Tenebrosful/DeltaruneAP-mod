#load "chapter1\chapter1_rooms.csx"

void Build_rooms(int chapter)
{
  switch (chapter)
  {
    case 1: Load_chapter1_rooms(); break;
    default: return;
  }
}