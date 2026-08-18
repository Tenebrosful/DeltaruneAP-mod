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
    case "A Hat in Time":
      prophecies = ["THE GIRL WITH THE HAT SHALL SAY#\"PECK\""]
      break;
    case "DELTARUNE":
      prophecies = ["THE ANGEL,#FULFILLING THE PROPHECY OF DELTARUNE"]
      break;
    case "EarthBound":
      prophecies = ["TL;DR"]
      break;
    case "Final Fantasy 6 Worlds Collide":
      prophecies = ["A WORLD RUINED BY THE JESTER"]
      break;
    case "Hollow Knight":
      prophecies = ["THE KNIGHT, CREATED TO#TAKE ITS SIBLING'S PLACE"]
      break;
    case "Kingdom Hearts":
      prophecies = ["THE BOY WITH THE KEY#SHALL FACE HIS DESTINY"]
      break;
    case "Kingdom Hearts 2":
      prophecies = ["THE KEYBEARER, FROM TWO BECOME ONE#SHALL COMPLETE WHAT HAS BEGUN"]
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
    case "Skyward Sword":
      prophecies = ["THE HERO OF SKY, WITH GOLDEN LIGHT#VENTURES BELOW TO SLAY THE BLIGHT"]
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
    case "ULTRAKILL":
      prophecies = ["THE ARCHANGEL,#WRACKED WITH IMPERFECT HATRED."]
      break;
    case "Undertale":
      prophecies = ["THE ANGEL,#DESTINED TO EMPTY THE UNDERGROUND"]
      break;
    case "Unfair Flips":
      prophecies = ["A SINGLE HEAD FOR EVERY 20 TAILS#WITH ONLY TIME AND LUCK WILL YOU PREVAIL"]
      break;
    default:
      prophecies = [
        "TO SAVE THE WORLDS, THERE IS ONLY ONE WAY#ONLY AFTER 7 HOURS OF BK, WILL YOU PLAY", 
        "THE ANGELS WILL SEND#ITEMS TO AND FRO", 
        "THE VISIT WITH THE BURGER MONARCH#REMAINS ETERNAL."
        ]
      break;
  }

  var subroll = irandom(0, array_length(prophecies) - 1)

  return prophecies[subroll];
}