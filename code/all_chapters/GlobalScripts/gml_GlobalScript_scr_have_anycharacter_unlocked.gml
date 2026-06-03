/// IMPORT
function scr_have_anycharacter_unlocked()
{
  for (var i = 0; i < 3; i++)
  {
    var char = global.char[i];

    if (char == -1) continue;

    if (global.maxhp[char] > 0) return true;
  }

  return false;
}