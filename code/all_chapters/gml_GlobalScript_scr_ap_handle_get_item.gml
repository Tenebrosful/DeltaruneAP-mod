/// FUNCTIONS
function scr_ap_handle_receive_item(item_id)
{
  var keyitem_offset = 10000;
  var armor_offset = 20000;
  var weapon_offset = 30000;
  var money_offset = 40000;
  // var warp_offset = 50000;
  var what_interesting_behavior = 66666;
  var macguffin_offset = 70000;
  var ch3_points_offset = 80000;
  var chapter_unlock_offset = 90000;

  global.interact = 1;
  global.typer = 6;
  global.fc = 0;
  global.fe = 0;
  showingitem = 1;

  item_id = scr_ap_egg_item(item_id);

  if (item_id >= chapter_unlock_offset){
    scr_ap_handle_chapter_unlock_item(item_id);
  }
  else if (item_id >= ch3_points_offset){
    scr_ap_handle_ch3_points_item(item_id);
  }
  else if (item_id >= macguffin_offset){
    scr_ap_handle_macguffin_item(item_id);
  }
  else if (item_id >= money_offset){
    scr_ap_handle_money_item(item_id);
  }
  else if (item_id >= weapon_offset){
    scr_ap_handle_weapon_item(item_id);
  }
  else if (item_id >= armor_offset){
    scr_ap_handle_armor_item(item_id);
  }
  else if (item_id >= keyitem_offset){
    scr_ap_handle_keyitem(item_id);
  }
  else{
    scr_ap_handle_normal_item(item_id);
  }
}

function scr_ap_egg_item(item_id)
{
  var egg_ids = [
    10002, 11011, 11012, 12021
  ];

    for (var i = 0; i < array_length(egg_ids); i++){
    if (egg_ids[i] == item_id) return 10002;
  }

  return item_id;
}

function scr_ap_handle_chapter_unlock_item(item_id)
{
  var chapter_unlock_offset = 90000;
  var chapter = item_id - chapter_unlock_offset;
  var item_name = "Chapter " + string(chapter);

  script_execute(scr_writetext, 0, string("* (You unlocked {0}.)/%", scr_ap_item_classification_color(item_name, 1)), 0, 6);
}

function scr_ap_handle_ch3_points_item(item_id)
{
  var ch3_points_offset = 80000;
  var points_amount = item_id - ch3_points_offset;
  var points = "";

  if (points_amount > 1)
    points = "POINTS";
  else
    points = "POINT"

  if (global.chapter == 3){
    global.flag[1044] += points_amount;
    script_execute(scr_writetext, 0, string("* (You got {0}.)/%", scr_ap_item_classification_color(points_amount + " " + points, 0)));
  }
  else
  {
    script_execute(scr_writetext, 0, string("* (You got {0} for chapter 3.)/%", scr_ap_item_classification_color(points_amount + " " + points, 0)));
  }

}

function scr_ap_handle_macguffin_item(item_id)
{
  var macguffin_offset = 70000;
  scr_keyiteminfo(item_id - macguffin_offset + 700)

  if (global.chapter == tempkeyitemchapter)
    global.MacGuffin_count += 1;

  scr_ap_handle_real_keyitem(item_id - macguffin_offset + 700);
}

function scr_ap_handle_keyitem(item_id)
{
  var keyitem_offset = 10000;
  scr_ap_handle_real_keyitem(item_id - keyitem_offset);
}

function scr_ap_handle_real_keyitem(realitem_id)
{
  scr_keyiteminfo(realitem_id)
  var item_chapter = tempkeyitemchapter;
  var item_name = tempkeyitemname;

  if ((item_chapter == 0 || global.chapter == item_chapter) && !scr_keyitemcheck(realitem_id))
    scr_keyitemget(realitem_id);

  scr_ap_print_get_item_text(item_chapter, realitem_id, item_name, 1);
}

function scr_ap_handle_money_item(item_id)
{
  var money_offset = 40000;
  var amount = item_id - money_offset;

  global.gold += amount;
  script_execute(scr_writetext, 0, string("* (You got {0}.)/%", scr_ap_item_classification_color("D$" + string(amount), 0)), 0, 6);
}

function scr_ap_handle_weapon_item(item_id)
{
  var weapon_offset = 30000;
  var weapon_id = item_id - weapon_offset;

  scr_weaponinfo(weapon_id);
  var item_name = weaponnametemp;
  var item_classification = weaponclassificationtemp;
  scr_weaponget(weapon_id);

  scr_ap_print_get_item_text(global.chapter, item_id, item_name, item_classification);
}

function scr_ap_handle_armor_item(item_id)
{
  var armor_offset = 20000;
  var armor_id = item_id - armor_offset;

  scr_armorinfo(armor_id);
  var item_name = armornametemp;
  var item_classification = armorclassificationtemp;
  scr_armorget(armor_id);

  scr_ap_print_get_item_text(global.chapter, item_id, item_name, item_classification);
}

function scr_ap_handle_normal_item(item_id)
{
  scr_iteminfo(item_id);
  var item_name = itemnameb;
  var item_classification = itemclassification;
  scr_itemget(item_id);

  scr_ap_print_get_item_text(global.chapter, item_id, item_name, item_classification);
}

function scr_ap_print_get_item_text(item_chapter, item_id, item_name, item_classification)
{
  if (scr_ap_item_have_special_text(item_id))
  {
    scr_ap_print_get_item_text_special(item_id);
  }
  else if (item_chapter != global.chapter)
  {
    script_execute(scr_writetext, 0, string("* (You got {0} for chapter {1}.)/%", scr_ap_item_classification_color(item_name, item_classification), item_chapter), 0, 6);
  }
  else
  {
    script_execute(scr_writetext, 0, string("* (You got {0}.)/%", scr_ap_item_classification_color(item_name, item_classification)), 0, 6);
  }
}

function scr_ap_item_have_special_text(item_id)
{
  var special_items_ids = [
    11005, 11006, 11007, 11016, 11017, 11020
  ]

  for (var i = 0; i < array_length(special_items_ids); i++){
    if (special_items_ids[i] == item_id) return true;
  }

  return false;
}

function scr_ap_print_get_item_text_special(item_id)
{
  switch (item_id) {
    case 11005: // Moss Chapter 1
      global.hp[1] = global.maxhp[1];
      snd_play(snd_swallow);
      script_execute(scr_writetext, 0, "* (You ate the moss.^1)&* (Tastes..^1. mossy.^1)&* (Your HP was mossed out.)/%", 0, 6);
      break;

    case 11006: // Joe's Life Savings
      script_execute(scr_writetext, 0, "* You recieved Joe's Life Savings ($1)!/%", 0, 6);
      global.gold += 1;
      break;

    case 11007: // Moss Chapter 2
      global.hp[1] = global.maxhp[1];
      global.msc = 0;
      global.typer = 6;
      global.fc = 0;
      global.fe = 0;
      global.interact = 1;
      global.msg[0] = "\\s0* You got the \\cG[Moss]\\cW^8!/%";
      d_make();
      snd_play(snd_moss_fanfare);
      snd_pause(global.currentsong[1]);
      scr_script_delayed(snd_resume, 100, global.currentsong[1]);
      break;

    case 11016:
      script_execute(scr_writetext, 0, "\\s0* You felt it smile^3./%", 0, 6);
      snd_play(snd_creepyjingle);
      break;

    case 11017: // Moss Chapter 3
      global.hp[1] = global.maxhp[1];
      snd_play(snd_swallow);
      script_execute(scr_writetext, 0, "* (\\cGMoss\\cW sent to you.^1)&* (It was consumed.)/%", 0, 6);
      break;

    case 11020:
      global.hp[1] = global.maxhp[1];
      global.msc = 0;
      global.typer = 6;
      global.fc = 0;
      global.fe = 0;
      global.interact = 1;
      global.msg[0] = "\\s0* The moss was consumed with gusto^8!/%";
      d_make();
      snd_play(snd_moss_fanfare);
      snd_pause(global.currentsong[1]);
      scr_script_delayed(snd_resume, 100, global.currentsong[1]);

    default:
      break;
  }
}