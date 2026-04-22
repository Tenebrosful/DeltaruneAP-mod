#load "chapter1\chapter1_gameobjects.csx"
#load "chapter2\chapter2_gameobjects.csx"

void Build_gameobjects(int chapter)
{
  switch (chapter)
  {
    case 1: Load_chapter1_gameobjects(); break;
    case 2: Load_chapter2_gameobjects(); break;
    default: return;
  }
}