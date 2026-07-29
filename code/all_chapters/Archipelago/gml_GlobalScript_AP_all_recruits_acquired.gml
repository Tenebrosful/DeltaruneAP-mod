/// IMPORT
function AP_all_recruits_acquired()
{
  switch(global.chapter)
  {
    case 1:
      return global.flag[605] == 1 // rudinn
      && global.flag[606] // Hathy
      && global.flag[615] // Jigsawry
      && global.flag[611] // Ponman
      && global.flag[613] // Rabbick
      && global.flag[614] // Bloxer
      && global.flag[623] // Head Hathy
      && global.flag[622] // Rudinn Ranger
      break;
    case 2:
      return global.flag[633] // Werewire
      && global.flag[632] // Tasque
      && global.flag[606] // Virovirokun
      && global.flag[631] // Poppup
      && global.flag[630] // Ambyu-Lance
      && global.flag[634] // Maus
      && global.flag[636] // Swatchlings
      && global.flag[642] // Tasque Manager
      && global.flag[644] // Mauswheel
      && global.flag[640] // Werewerewire
      break;
    case 3:
      return global.flag[654] // Shadowguy
      && global.flag[659] // Pippins
      && global.flag[655] // Shuttah
      && global.flag[658] // Water Cooler
      && global.flag[656] // Zapper
      && global.flag[657] // Rabbick
      break;
    case 4:
      return global.flag[662] // Guei
      && global.flag[663] // Balthizard
      && global.flag[664] // Bibliox
      && global.flag[665] // Mizzle
      && global.flag[669] // Miss Mizzle
      && global.flag[667] // Winglade
      && global.flag[668] // Organikk
      && global.flag[666] // Wicabel
      break;
    case 5:
      return global.flag[670] // Floraddin
      && global.flag[675] // Sheary
      && global.flag[676] // Netskie
      && global.flag[672] // Shi
      && global.flag[671] // Leafling
      && global.flag[674] // Kawkaw
      && global.flag[673] // Shinobeetle
      && global.flag[677] // Terakota
      break;

  }
}