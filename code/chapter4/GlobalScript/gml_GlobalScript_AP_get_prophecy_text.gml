/// IMPORT
function AP_get_prophecy_text()
{
  if (array_length(global.AP_other_games) == 0)
    return ""
  
  var diceroll_game = irandom(0, array_length(global.AP_other_games) - 1)
  var game_name = global.AP_other_games[diceroll_game];
  var text;

  switch(game_name)
  {
    case "DELTARUNE":
      prophecies = []
      break;
    case "EarthBound":
      prophecies = ["TL;DR"]
      break;
    case "Final Fantasy 6 Worlds Collide":
      prophecies = ["A WORLD RUINED BY THE JESTER"]
      break;
    case "Mega Man 2":
      prophecies = ["THE METAL MAN'S BLADE#CANNOT BE STOPPED"]
      break;
    case "Nine Sols":
      prophecies = ["THE IMMORTAL WILL PERFORM#SICKNASTY SCHMOVEMENT"]
      break;
    case "Ocarina of Time":
      prophecies = ["THE BLUE CRYSTALS, SCATTERED ABOUT"]
      break;
    case "Shadow The Hedgehog":
      prophecies = ["A HEDGEHOG'S PATH, DECIDED"]
      break;
    case "Sonic Adventure 2 Battle":
      prophecies = ["HERO AND DARK, UNITED AGAINST THE LIZARD"]
      break;
    case "Spyro the Dragon":
      prophecies = ["DRAGONS ENCASED IN CRYSTAL"]
      break;
    case "Spyro 2":
      prophecies = ["A DRAGON'S VACATION IS WAYLAID"]
      break;
    case "Spyro 3":
      prophecies = ["THE DRAGON EGGS WILL BE RECOVERED"]
      break;
    case "ULTRAKILL"
      prophecies = ["THE ANGEL, BANISHED,#WILL GET TILTED"]
      break;
    default:
      prophecies = ["IN ORDER TO SAVE THE WORLD, THERE IS ONE WAY#ONLY AFTER 7 HOURS OF BK, YOU WILL PLAY"]
      break;
  }

  var subroll = irandom(0, array_length(prophecies) - 1)

  return prophecies[subroll];
}