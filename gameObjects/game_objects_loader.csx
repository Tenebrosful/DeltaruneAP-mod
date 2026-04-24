#load "chapter1\chapter1_gameobjects.csx"
#load "chapter2\chapter2_gameobjects.csx"
#load "chapter_select\chapter_select_gameobjects.csx"
#load "common\common_gameobjects.csx"

void Build_gameobjects(int chapter)
{
  Load_common_gameobjects();
  switch (chapter)
  {
    case 0: Load_chapter_select_gameobjects(); break;
    case 1: Load_chapter1_gameobjects(); break;
    case 2: Load_chapter2_gameobjects(); break;
    default: return;
  }
}