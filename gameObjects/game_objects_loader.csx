#load "chapter1\chapter1_gameobjects.csx"

void Build_gameobjects(int chapter)
{
  switch (chapter)
  {
    case 1: Load_chapter1_gameobjects(); break;
    default: return;
  }
}