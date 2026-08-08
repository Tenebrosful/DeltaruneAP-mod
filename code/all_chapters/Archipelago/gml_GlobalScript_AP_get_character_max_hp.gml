/// IMPORT
function AP_get_character_max_hp(character_id)
{
  switch (character_id)
  {
    case 1: // Kris
      hp = [90, 120, 160, 200, 240]
      break;

    case 2: // Susie
      hp = [110, 140, 190, 230, 290]
      break;

    case 3: // Ralsei
      hp = [70, 100, 140, 180, 210]
      break;

    case 4: // Noelle
      hp = [90, 90, 90, 90, 90]
      break;

    default:
      hp = []
      break;
  }

  if (array_length(hp) < global.chapter)
    return -999
  else
    return hp[global.chapter - 1]
}