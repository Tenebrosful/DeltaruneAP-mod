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
      break;
    default:
      prophecies = ["IN ORDER TO SAVE THE WORLD, THERE IS ONE WAY#ONLY AFTER 7 HOURS OF BK, YOU WILL PLAY"]
      break;
  }

  var subroll = irandom(0, array_length(prophecies) - 1)

  return prophecies[subroll];
}