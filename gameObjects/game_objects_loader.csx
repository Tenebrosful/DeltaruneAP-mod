#load "chapter1\chapter1_gameobjects.csx"
#load "chapter_select\chapter_select_gameobjects.csx"

void Build_gameobjects(int chapter)
{
  switch (chapter)
  {
    case 0: Load_chapter_select_gameobjects(); break;
    case 1: Load_chapter1_gameobjects(); break;
    default: return;
  }
}