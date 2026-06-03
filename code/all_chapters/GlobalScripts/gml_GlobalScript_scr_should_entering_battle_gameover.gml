/// IMPORT
function scr_should_entering_battle_gameover()
{
  switch(global.encounterno)
  {
    case 2:
    case 20:
    case 40:
    case 72:
    case 84:
    case 102:
    case 160:
      return false;
  }

  return !scr_have_anycharacter_unlocked()
}