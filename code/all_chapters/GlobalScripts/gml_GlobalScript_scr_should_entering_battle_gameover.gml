/// IMPORT
function scr_should_entering_battle_gameover()
{
  switch(global.encounterno)
  {
    case 2: // Lancer
    case 20: // Susie vs Lancer
    case 40: // King
    case 72: // Graze Challenge
    case 84: // Giga Queen
    case 102: // Pipis
      return false;
  }

  return !scr_have_anycharacter_unlocked()
}