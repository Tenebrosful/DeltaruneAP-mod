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
    case "Mega Man 2":
      prophecies = ["THE METAL MAN'S BLADE#CANNOT BE STOPPED"]
      break;
    case "Nine Sols":
      prophecies = ["THE IMMORTAL WILL PERFORM#SICKNASTY SCHMOVEMENT"]
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