/// FUNCTIONS
function AP_all_recruits_acquired()
{
  
  switch(global.chapter)
  {
    case 1:
      // rudinn, Hathy, Jigsawry, Ponman, Rabbick, Bloxer, Head Hathy, Rudinn Ranger
      recruits_ids = [605, 606, 615, 611, 613, 614, 623, 622] 
      
      if (global.AP_chapter_1_recruit == false)
        return true

      break;
    case 2:
      // Werewire, Tasque, Virovirokun, Poppup, Ambyu-Lance, Maus, Swatchlings, Tasque Manager, Mauswheel, Werewerewire
      recruits_ids = [633, 632, 635, 631, 630, 634, 636, 642, 644, 640]
      break;
    case 3:
      // Shadowguy, Pippins, Shuttah, Water Cooler, Zapper, Rabbick
      recruits_ids = [654, 659, 655, 658, 656, 657]
      break;
    case 4:
      // Guei, Balthizard, Bibliox, Mizzle, Miss Mizzle, Winglade, Organikk, Wicabel
      recruits_ids = [662, 663, 664, 665, 669, 667, 668, 666]
      break;
    case 5:
      // Floraddin, Sheary, Netskie, Shi, Leafling, Kawkaw, Shinobeetle, Terakota
      recruits_ids = [670, 675, 676, 672, 671, 674, 673, 677]
      break;
    default:
      recruits_ids = []
      break;
  }

  for (var i = 0; i < array_length(recruits_ids); i++)
  {
    if (global.flag[recruits_ids[i]] != 1)
    {
      return false
    }
  }

  return true
}

function AP_set_recruits_flags()
{
  if (global.AP_current_route  == global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS)
  {
    AP_set_recruits_flags_all_recruits_route();
  }
  else
  {
    AP_set_recruits_flags_normal_route();

    if (global.AP_current_route  == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE)
    {
      AP_set_recruits_flags_weird_route();
    }
  }
}

function AP_set_recruits_flags_all_recruits_route()
{
  if (global.chapter >= 2)
  {
      global.flag[605] = 1;
      global.flag[606] = 1;
      global.flag[611] = 1;
      global.flag[613] = 1;
      global.flag[614] = 1;
      global.flag[615] = 1;
      global.flag[622] = 1;
      global.flag[623] = 1;
  }
  
  if (global.chapter >= 3)
  {
      global.flag[630] = 1;
      global.flag[631] = 1;
      global.flag[632] = 1;
      global.flag[643] = 1;
      global.flag[634] = 1;
      global.flag[635] = 1;
      global.flag[636] = 1;
      global.flag[640] = 1;
      global.flag[642] = 1;
      global.flag[644] = 1;
  }
  
  if (global.chapter >= 4)
  {
      global.flag[654] = 1;
      global.flag[655] = 1;
      global.flag[656] = 1;
      global.flag[657] = 1;
      global.flag[658] = 1;
      global.flag[659] = 1;
  }
  
  if (global.chapter >= 5)
  {
      global.flag[662] = 1;
      global.flag[663] = 1;
      global.flag[664] = 1;
      global.flag[665] = 1;
      global.flag[666] = 1;
      global.flag[667] = 1;
      global.flag[668] = 1;
      global.flag[669] = 1;
  }
}

function AP_set_recruits_flags_normal_route()
{
  if (global.chapter >= 2)
  {
      global.flag[605] = 1;
      global.flag[606] = 1;
      global.flag[611] = 1;
      global.flag[613] = 1;
      global.flag[614] = 1;
      global.flag[615] = 1;
      global.flag[622] = 1;
      global.flag[623] = 1;
  }
  
  if (global.chapter >= 4)
  {
      global.flag[654] = 1;
      global.flag[655] = 1;
      global.flag[656] = 1;
      global.flag[657] = 1;
      global.flag[658] = 1;
      global.flag[659] = 1;
  }
}

function AP_set_recruits_flags_weird_route()
{
  if (global.chapter >= 3)
  {
      global.flag[630] = -1;
      global.flag[631] = -1;
      global.flag[632] = -1;
      global.flag[633] = -1;
      global.flag[634] = -1;
      global.flag[635] = -1;
  }
}