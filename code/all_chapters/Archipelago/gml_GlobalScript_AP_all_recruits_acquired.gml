/// IMPORT
function AP_all_recruits_acquired()
{
  switch(global.chapter)
  {
    case 1:
      return global.flag[605] == 1 // rudinn
      && global.flag[606] == 1 // Hathy
      && global.flag[615] == 1 // Jigsawry
      && global.flag[611] == 1 // Ponman
      && global.flag[613] == 1 // Rabbick
      && global.flag[614] == 1 // Bloxer
      && global.flag[623] == 1 // Head Hathy
      && global.flag[622] == 1 // Rudinn Ranger
      break;
    case 2:
      return global.flag[633] == 1 // Werewire
      && global.flag[632] == 1 // Tasque
      && global.flag[635] == 1 // Virovirokun
      && global.flag[631] == 1 // Poppup
      && global.flag[630] == 1 // Ambyu-Lance
      && global.flag[634] == 1 // Maus
      && global.flag[636] == 1 // Swatchlings
      && global.flag[642] == 1 // Tasque Manager
      && global.flag[644] == 1 // Mauswheel
      && global.flag[640] == 1 // Werewerewire
      break;
    case 3:
      return global.flag[654] == 1 // Shadowguy
      && global.flag[659] == 1 // Pippins
      && global.flag[655] == 1 // Shuttah
      && global.flag[658] == 1 // Water Cooler
      && global.flag[656] == 1 // Zapper
      && global.flag[657] == 1 // Rabbick
      break;
    case 4:
      return global.flag[662] == 1 // Guei
      && global.flag[663] == 1 // Balthizard
      && global.flag[664] == 1 // Bibliox
      && global.flag[665] == 1 // Mizzle
      && global.flag[669] == 1 // Miss Mizzle
      && global.flag[667] == 1 // Winglade
      && global.flag[668] == 1 // Organikk
      && global.flag[666] == 1 // Wicabel
      break;
    case 5:
      return global.flag[670] == 1 // Floraddin
      && global.flag[675] == 1 // Sheary
      && global.flag[676] == 1 // Netskie
      && global.flag[672] == 1 // Shi
      && global.flag[671] == 1 // Leafling
      && global.flag[674] == 1 // Kawkaw
      && global.flag[673] == 1 // Shinobeetle
      && global.flag[677] == 1 // Terakota
      break;

  }
}