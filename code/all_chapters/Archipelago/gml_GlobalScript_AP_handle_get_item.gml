/// FUNCTIONS
function AP_sync_item_from_server()
{
  var server_length = undefined;
  var local_length = undefined;

  if (global.AP_item_from_server == undefined)
    server_length = 0;
  else
    server_length = array_length(global.AP_item_from_server);

  if (global.AP_item_got_in_current_chapter == undefined)
    local_length = 0;
  else
    local_length = array_length(global.AP_item_got_in_current_chapter)

  var length_diff = server_length - local_length;

  if (length_diff > 0)
  {
    global.AP_items_waiting_to_receive = undefined;
    for (i = 0; i < length_diff; i++)
    {
      global.AP_items_waiting_to_receive[i] = global.AP_item_from_server[local_length + i];
    }
  }
}

function AP_handle_receive_character_unlock(character_id)
{
  if (global.maxhp[character_id] < 0)
    global.maxhp[character_id] += 999 + AP_internal_get_character_max_hp(character_id);
    
  global.hp[character_id] = global.maxhp[character_id];
}

function AP_internal_get_character_max_hp(character_id)
{
  switch (character_id)
  {
    case 1: // Kris
      switch (global.chapter)
      {
        case 1:
          return 90;

        case 2:
          return 120;

        case 3:
          return 160;

        case 4:
          return 200;

        default:
          return -999;
      }

    case 2: // Susie
      switch (global.chapter)
      {
        case 1:
          return 110;

        case 2:
          return 140;

        case 3:
          return 190;

        case 4:
          return 230;

        default:
          return -999;
      }

    case 3: // Ralsei
      switch (global.chapter)
      {
        case 1:
          return 70;

        case 2:
          return 100;

        case 3:
          return 140;

        case 4:
          return 180;

        default:
          return -999;
      }

    case 4: // Noelle
      switch (global.chapter)
      {
        case 1:
        case 3:
        case 4:
        case 2:
          return 90;
        default:
          return -999;
      }

    default:
      return -999;
  }
}

function AP_handle_receive_item(item_id)
{
  global.interact = 1;
  global.typer = 6;
  global.fc = 0;
  global.fe = 0;
  showingitem = 1;

  item_id = AP_internal_egg_item(item_id);

  if (item_id == 66666){
    return;
  }

  if (item_id >= global.AP_item_offset.other_unlock)
  {
    AP_internal_handle_other_item(item_id);
  }
  else if (item_id >= global.AP_item_offset.chapter_unlock){
    AP_internal_handle_chapter_unlock_item(item_id);
  }
  else if (item_id >= global.AP_item_offset.ch3_points){
    AP_internal_handle_ch3_points_item(item_id);
  }
  else if (item_id >= global.AP_item_offset.macguffin){
    AP_internal_handle_macguffin_item(item_id);
  }
  else if (item_id >= global.AP_item_offset.character_unlock){
    AP_internal_handle_character_unlock(item_id);
  }
  else if (item_id >= global.AP_item_offset.money){
    AP_internal_handle_money_item(item_id);
  }
  else if (item_id >= global.AP_item_offset.weapon){
    AP_internal_handle_weapon_item(item_id);
  }
  else if (item_id >= global.AP_item_offset.armor){
    AP_internal_handle_armor_item(item_id);
  }
  else if (item_id >= global.AP_item_offset.keyitem){
    AP_internal_handle_keyitem(item_id);
  }
  else{
    AP_internal_handle_normal_item(item_id);
  }
}

function AP_internal_handle_other_item(item_id)
{
    switch(item_id)
    {
        case 100000:
            global.flag[34] = false;
            script_execute(scr_writetext, 0, string("* (You unlocked {0}.)/%", AP_item_classification_color_text("S/R/N-Actions", 2)), 0, 6);
            break;
    }
}

function AP_internal_handle_character_unlock(item_id)
{
  var character_id = item_id - global.AP_item_offset.character_unlock;
  AP_handle_receive_character_unlock(character_id);
  script_execute(scr_writetext, 0, string("* (You unlocked {0}.)/%", AP_item_classification_color_text(global.charname[character_id], 3)), 0, 6);
}

function AP_internal_egg_item(item_id)
{
  var egg_ids = [
    10002, 11011, 11012, 12021
  ];

    for (var i = 0; i < array_length(egg_ids); i++){
    if (egg_ids[i] == item_id) return 10002;
  }

  return item_id;
}

function AP_internal_handle_chapter_unlock_item(item_id)
{
  var chapter = item_id - global.AP_item_offset.chapter_unlock;
  var item_name = "Chapter " + string(chapter);

  script_execute(scr_writetext, 0, string("* (You unlocked {0}.)/%", AP_item_classification_color_text(item_name, 1)), 0, 6);
}

function AP_internal_handle_ch3_points_item(item_id)
{
  var points_amount = item_id - global.AP_item_offset.ch3_points;
  var points = "";

  if (points_amount > 1)
    points = "POINTS";
  else
    points = "POINT"

  if (global.chapter == 3){
    global.flag[1044] += points_amount;
    script_execute(scr_writetext, 0, string("* (You got {0}.)/%", AP_item_classification_color_text(string(points_amount) + " " + points, 0)), 0, 6);
  }
  else
  {
    script_execute(scr_writetext, 0, string("* (You got {0} for chapter 3.)/%", AP_item_classification_color_text(string(points_amount) + " " + points, 0)), 0, 6);
  }

}

function AP_internal_handle_macguffin_item(item_id)
{
  scr_keyiteminfo(item_id - global.AP_item_offset.macguffin + 700)

  if (global.chapter == tempkeyitemchapter)
    global.MacGuffin_count += 1;

  AP_internal_handle_real_keyitem(item_id - global.AP_item_offset.macguffin + 700);
}

function AP_internal_handle_keyitem(item_id)
{
  AP_internal_handle_real_keyitem(item_id - global.AP_item_offset.keyitem);
}

function AP_internal_handle_real_keyitem(realitem_id)
{
  scr_keyiteminfo(realitem_id)
  var item_chapter = tempkeyitemchapter;
  var item_name = tempkeyitemname;

  if ((item_chapter == 0 || global.chapter == item_chapter) && !scr_keyitemcheck(realitem_id) && AP_internal_special_key_item(realitem_id))
    scr_keyitemget(realitem_id);

  if realitem_id == 1018
    global.customflags[25] = true;
  else if realitem_id == 1019
    global.customflags[26] = true;

  AP_internal_print_get_item_text(item_chapter, realitem_id, item_name, 1);
}

function AP_internal_special_key_item(realitem_id)
{
  return realitem_id != 1005 // moss ch1
  && realitem_id != 1006 // joe's life savings
  && realitem_id != 1011 // moss ch2
  && realitem_id != 1016 // smile
  && realitem_id != 1017 // moss ch3
  && realitem_id != 1018 // ice key
  && realitem_id != 1019 // shelter key
  && realitem_id != 1020 // moss ch4

}

function AP_internal_handle_money_item(item_id)
{
  var amount = item_id - global.AP_item_offset.money;

  global.gold += amount;
  script_execute(scr_writetext, 0, string("* (You got {0}.)/%", AP_item_classification_color_text("D$" + string(amount), 0)), 0, 6);
}

function AP_internal_handle_weapon_item(item_id)
{
  var weapon_id = item_id - global.AP_item_offset.weapon;

  scr_weaponinfo(weapon_id);
  var item_name = weaponnametemp;
  var item_classification = weaponclassificationtemp;
  scr_weaponget(weapon_id);

  AP_internal_print_get_item_text(global.chapter, item_id, item_name, item_classification);
}

function AP_internal_handle_armor_item(item_id)
{
  var armor_id = item_id - global.AP_item_offset.armor;

  scr_armorinfo(armor_id);
  var item_name = armornametemp;
  var item_classification = armorclassificationtemp;
  scr_armorget(armor_id);

  AP_internal_print_get_item_text(global.chapter, item_id, item_name, item_classification);
}

function AP_internal_handle_normal_item(item_id)
{
  scr_iteminfo(item_id);
  var item_name = itemnameb;
  var item_classification = itemclassification;
  scr_itemget(item_id);

  AP_internal_print_get_item_text(global.chapter, item_id, item_name, item_classification);
}

function AP_internal_print_get_item_text(item_chapter, item_id, item_name, item_classification)
{
  if (AP_internal_item_have_special_text(item_id))
  {
    AP_internal_print_get_item_text_special(item_id);
  }
  else if (item_chapter != global.chapter)
  {
    script_execute(scr_writetext, 0, string("* (You got {0} for chapter {1}.)/%", AP_item_classification_color_text(item_name, item_classification), item_chapter), 0, 6);
  }
  else
  {
    script_execute(scr_writetext, 0, string("* (You got {0}.)/%", AP_item_classification_color_text(item_name, item_classification)), 0, 6);
  }
}

function AP_internal_item_have_special_text(item_id)
{
  var special_items_ids = [
    1005, 1006, 1007, 1016, 1017, 1020
  ]

  for (var i = 0; i < array_length(special_items_ids); i++){
    if (special_items_ids[i] == item_id) return true;
  }

  return false;
}

function AP_internal_print_get_item_text_special(item_id)
{
  switch (item_id) {
    case 1005: // Moss Chapter 1
      global.hp[1] = global.maxhp[1];
      snd_play(snd_swallow);
      script_execute(scr_writetext, 0, "* (You ate the moss.^1)&* (Tastes..^1. mossy.^1)&* (Your HP was mossed out.)/%", 0, 6);
      break;

    case 1006: // Joe's Life Savings
      script_execute(scr_writetext, 0, "* You recieved Joe's Life Savings ($1)!/%", 0, 6);
      global.gold += 1;
      break;

    case 1007: // Moss Chapter 2
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

    case 1016:
      script_execute(scr_writetext, 0, "\\s0* You felt it smile^3./%", 0, 6);
      snd_play(snd_creepyjingle);
      break;

    case 1017: // Moss Chapter 3
      global.hp[1] = global.maxhp[1];
      snd_play(snd_swallow);
      script_execute(scr_writetext, 0, "* (\\cGMoss\\cW sent to you.^1)&* (It was consumed.)/%", 0, 6);
      break;

    case 1020:
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