/// FUNCTIONS
function AP_handle_receive_item(item_id)
{
  if (AP_should_skip_item_reception(item_id)) return;

  if (!global.AP_is_first_sync && AP_is_special_textbox_item(item_id))
  {
    array_push(global.AP_special_textboxes_waiting, item_id)
  }

  if (AP_is_trap_item(item_id))
  {
    AP_receive_trap(item_id)
  }
  else if (item_id >= global.AP_item_offset.flowery_dollar)
  {
    AP_receive_flowery_dollar(item_id)
  }
  else if (item_id >= global.AP_item_offset.other_unlock)
  {
    AP_receive_other_unlock(item_id)
  }
  else if (item_id >= global.AP_item_offset.chapter_unlock)
  {
    // We don't really care during a chapter
  }
  else if (item_id >= global.AP_item_offset.ch3_points)
  {
    AP_receive_ch3_points(item_id)
  }
  else if (item_id >= global.AP_item_offset.macguffin)
  {
    AP_receive_macguffin(item_id)
  }
  else if (item_id >= global.AP_item_offset.character_unlock)
  {
    AP_receive_character(item_id)
  }
  else if (item_id >= global.AP_item_offset.progressive)
  {
    AP_receive_progressive(item_id)
  }
  else if (item_id >= global.AP_item_offset.money)
  {
    AP_receive_money(item_id)
  }
  else if (item_id >= global.AP_item_offset.weapon)
  {
    AP_receive_weapon(item_id)
  }
  else if (item_id >= global.AP_item_offset.armor)
  {
    AP_receive_armor(item_id)
  }
  else if (item_id >= global.AP_item_offset.keyitem)
  {
    AP_receive_keyitem(item_id)
  }
  else
  {
    AP_receive_item(item_id)
  }
}

function AP_should_skip_item_reception(item_id)
{
  // WHAT INTERESTING BEHAVIOR, 
  var skipped_ids = [66666]

  for (var i = 0; i < array_length(skipped_ids); i++)
  {
    if (item_id == skipped_ids[i])
    {
      return true;
    }
  }

  return false;
}

function AP_is_trap_item(item_id)
{
  // S.POISON, BROMIDE
  var trap_ids = [32, 10024, 10033]

  for (var i = 0; i < array_length(trap_ids); i++)
  {
    if (item_id == trap_ids[i])
    {
      return true;
    }
  }

  return false;
}

function AP_is_special_textbox_item(item_id)
{
  var special_textbox_ids = [11005, 11006, 11007, 11016, 11017, 11020]

  for (var i = 0; i < array_length(special_textbox_ids); i++)
  {
    if (item_id == special_textbox_ids[i])
    {
      return true;
    }
  }

  return false;
}

function AP_receive_trap(item_id)
{
  switch(item_id)
  {
    case 32: // S.POISON
      if (global.interact == 2)
      {
          scr_spell(232, 0)
      }
      else
      {
          global.charselect = 0;
          scr_itemuse(32);
      }
      break;

    case 10024:
    case 10033:
      if (instance_exists(obj_dw_bromide))
      {
          bromide = instance_create(0, 0, obj_dw_bromide);
          bromide.queue(data[i].items[ii].item - global.AP_item_offset.keyitem);
      }
      else
      {
          bromide = instance_create(0, 0, obj_dw_bromide);
          bromide.use_item(data[i].items[ii].item - global.AP_item_offset.keyitem);
      }
      break;
    
    default:
      break;
  }
}

function AP_receive_character(item_id)
{
    var character_id = item_id - global.AP_item_offset.character_unlock
    if (global.maxhp[character_id] < 0)
    {
        global.maxhp[character_id] += 666 + AP_get_character_max_hp(character_id);
        global.hp[character_id] = global.maxhp[character_id];

        party_slot = -1;
        for (i = 0; i < 3; i++)
        {
        if (global.char[i] == character_id)
            party_slot = i
        }
        
        if (party_slot != -1)
        scr_revive(party_slot);
    }
}

function AP_receive_progressive(item_id)
{
  switch(item_id)
  {
    case 50000:  // Kris weapon
      if (array_length(global.AP_progressive_weapons_ids.kris) < global.AP_progressive_current_index.kris_weapon + 1)
        exit;

      var weapon_id = global.AP_progressive_weapons_ids.kris[global.AP_progressive_current_index.kris_weapon]
      global.AP_progressive_current_index.kris_weapon++;
      AP_receive_weapon(weapon_id + global.AP_item_offset.weapon);
      break;

    case 50001: // Susie weapon
      if (array_length(global.AP_progressive_weapons_ids.susie) < global.AP_progressive_current_index.susie_weapon + 1)
        exit;

      var weapon_id = global.AP_progressive_weapons_ids.susie[global.AP_progressive_current_index.susie_weapon]
      global.AP_progressive_current_index.susie_weapon++;
      AP_receive_weapon(weapon_id + global.AP_item_offset.weapon);
      break;

    case 50002: // Ralsei weapon
      if (array_length(global.AP_progressive_weapons_ids.ralsei) < global.AP_progressive_current_index.ralsei_weapon + 1)
        exit;

      var weapon_id = global.AP_progressive_weapons_ids.ralsei[global.AP_progressive_current_index.ralsei_weapon]
      global.AP_progressive_current_index.ralsei_weapon++;
      AP_receive_weapon(weapon_id + global.AP_item_offset.weapon);
      break;
      
    case 50003: // Noelle weapon
      if (array_length(global.AP_progressive_weapons_ids.noelle) < global.AP_progressive_current_index.noelle_weapon + 1)
        exit;

      var weapon_id = global.AP_progressive_weapons_ids.noelle[global.AP_progressive_current_index.noelle_weapon]
      global.AP_progressive_current_index.noelle_weapon++;
      AP_receive_weapon(weapon_id + global.AP_item_offset.weapon);
      break;
  }
}

function AP_receive_other_unlock(item_id)
{
    switch(item_id)
    {
        case 100000: // S/R/N-Actions
            global.flag[34] = false;
            break;
        case 100001: // Susie wearing ribbons
            global.flag[1404] = 1;
            break;
    }
}

function AP_receive_ch3_points(item_id)
{
  if (global.chapter == 3)
  {
    var points_amount = item_id - global.AP_item_offset.ch3_points;
    global.flag[1044] += points_amount;
  }
}

function AP_receive_flowery_dollar(item_id)
{
    if (global.chapter == 5)
    {
        var dollar_amount = item_id - global.AP_item_offset.flowery_dollar;
        global.flag[1411] += dollar_amount;
    }
}

function AP_receive_macguffin(item_id)
{
    keyitem_id = item_id - global.AP_item_offset.macguffin + 700;
    scr_keyiteminfo(keyitem_id)

    if (global.chapter == tempkeyitemchapter)
    {
        global.MacGuffin_count += 1;
        if (!scr_keyitemcheck(keyitem_id))
        {
            scr_keyitemget(keyitem_id)
        }
    }
}

function AP_receive_keyitem(item_id)
{
    keyitem_id = item_id - global.AP_item_offset.keyitem
    scr_keyiteminfo(keyitem_id)

    var item_chapter = tempkeyitemchapter;
    var item_name = tempkeyitemname;

    if ((item_chapter == 0 || global.chapter == item_chapter) && AP_internal_special_key_item(keyitem_id) && !scr_keyitemcheck(keyitem_id))
        scr_keyitemget(keyitem_id);

    switch(keyitem_id)
    {
        case 4:
        item_name = "Broken Key A"
        case 6:
        case 7:
        global.customflags[global.custom_flags_indexes.broken_key_part_count] += 1;

        if (!scr_keyitemcheck(4) && global.chapter == 1)
            scr_keyitemget(4);
        break;
        case 31: if (global.chapter == 4) global.flag[23] = 1; break;
        case 1018: global.customflags[global.custom_flags_indexes.got_ICE_KEY] = true; break;
        case 1019: global.customflags[global.custom_flags_indexes.got_SHELTER_KEY] = true; break;   
        case 1021: global.flag[1312] += 1; break;
    }
}

function AP_internal_special_key_item(keyitem_id)
{
  return 
  keyitem_id != 4 // Broken Key A
  && keyitem_id != 6 // Broken Key B
  && keyitem_id != 7 // Broken Key C
  && keyitem_id != 1005 // moss ch1
  && keyitem_id != 1006 // joe's life savings
  && keyitem_id != 1007 // moss ch2
  && keyitem_id != 1016 // smile
  && keyitem_id != 1017 // moss ch3
  && keyitem_id != 1018 // ice key
  && keyitem_id != 1019 // shelter key
  && keyitem_id != 1020 // moss ch4
  && keyitem_id != 1021 // pink coin
}

function AP_receive_money(item_id)
{
  var amount = item_id - global.AP_item_offset.money;
  global.gold += amount;
}

function AP_should_get_floweryscarf()
{
    return global.plot < 540 || global.chapter != 5;
}

function AP_receive_weapon(item_id)
{
    scr_weaponget(item_id - global.AP_item_offset.weapon)
}

function AP_receive_armor(item_id)
{
    scr_armorget(item_id - global.AP_item_offset.armor)
}

function AP_receive_item(item_id)
{
  var chapter = global.chapter

  if (item_id == 4) // Manual
    chapter = 1;
  
  if (chapter == global.chapter)
  {
    if (instance_exists(obj_battlecontroller))
    {
        array_push(global.AP_item_in_battle_waiting, item_id)
    }
    else
    {
        scr_itemget(item_id);
    }
  }
}

function AP_proceed_in_battle_waiting_items()
{
    for (var i = 0; i < array_length(global.AP_item_in_battle_waiting); i++)
    {
        scr_itemget(global.AP_item_in_battle_waiting[i]);
    }
}

function AP_proceed_special_item_textbox()
{
    if (!AP_can_display_textbox()) return;
    if (array_length(global.AP_special_textboxes_waiting) == 0) return;

    AP_display_special_textbox(global.AP_special_textboxes_waiting[0]);
    array_delete(global.AP_special_textboxes_waiting, 0, 1)
}

function AP_can_display_textbox()
{

    var chapterSpecificLogic;

    switch(global.chapter)
    {
        case 2:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master);
            break;
        case 3:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master) && !instance_exists(obj_board_controller);
            break;
        case 4:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master);
            break;
        case 5:
            chapterSpecificLogic = !instance_exists(obj_cutscene_master) && !instance_exists(obj_plat_player)
            break;
        default:
            chapterSpecificLogic = true;
    }

    return
    (
            global.interact == 0
            && global.darkzone == 1
            && !instance_exists(obj_fadein)
            && !instance_exists(obj_fadeout)
            && !instance_exists(obj_persistentfadein)
            && !instance_exists(obj_dialoguer)
            && !cutscene
            && chapterSpecificLogic
            && !AP_chapter_specific_display_textbox_blacklist()
    );
    
}

function AP_chapter_specific_display_textbox_blacklist()
{
    switch(global.chapter)
    {
        case 3:
            switch(room)
            {
                case room_board_1:
                case room_board_1_sword:
                case room_board_2:
                case room_board_2_sword:
                case room_board_3_sword:
                case room_board_dungeon_2:
                case room_board_dungeon_3:
                case room_board_preshadowmantle:
                case room_board_prepostshadowmantle:
                case room_board_postshadowmantle:
                case room_board_preshadowmantle_repeat:
                case room_dw_chef:
                case room_dw_chef_empty:
                case room_dw_rhythm:
                case room_dw_rhythm_empty:
                case room_dw_rhythm_countdown:
                case room_dw_b3bs_bibliox:
                case room_dw_teevie_shuttahmaze:
                    return true;
            }
            break;
        case 4:
            if (i_ex(obj_climb_kris)) return true;
            break;
    }
}

function AP_display_special_textbox(item_id)
{
    showing_special_textbox = true;
    global.interact = 1;
    switch (item_id) {
        case 11005: // Moss Chapter 1
            global.maxhp[1]++;
            global.hp[1] = global.maxhp[1];
            snd_play(snd_swallow);
            script_execute(scr_writetext, 0, "* (You ate the moss.^1)&* (Tastes..^1. mossy.^1)&* (Your HP was mossed out.)/%", 0, 6);
            break;

        case 11006: // Joe's Life Savings
            script_execute(scr_writetext, 0, "* You received Joe's Life Savings ($1)!/%", 0, 6);
            
            global.gold += 1;
            break;

        case 11007: // Moss Chapter 2
            global.maxhp[1]++;
            global.hp[1] = global.maxhp[1];
            global.msc = 0;
            global.typer = 6;
            global.fc = 0;
            global.fe = 0;
            global.msg[0] = "\\s0* You got the \\cG[Moss]\\cW^8!/%";
            snd_play(snd_moss_fanfare);
            snd_pause(global.currentsong[1]);
            scr_script_delayed(snd_resume, 100, global.currentsong[1]);
            d_make();
            break;

        case 11016:
            script_execute(scr_writetext, 0, "\\s0* You felt it smile^3./%", 0, 6);
            snd_play(snd_creepyjingle);
            break;

        case 11017: // Moss Chapter 3
            global.maxhp[1]++;
            global.hp[1] = global.maxhp[1];
            script_execute(scr_writetext, 0, "* (\\cGMoss\\cW sent to you.^1)&* (It was consumed.)/%", 0, 6);
            snd_play(snd_swallow);
            break;

        case 11020:
            global.maxhp[1]++;
            global.hp[1] = global.maxhp[1];
            global.msc = 0;
            global.typer = 6;
            global.fc = 0;
            global.fe = 0;
            global.msg[0] = "\\s0* The moss was consumed with gusto^8!/%";
            snd_play(snd_moss_fanfare);
            d_make();
            snd_pause(global.currentsong[1]);
            scr_script_delayed(snd_resume, 100, global.currentsong[1]);
            break;

        default:
            break;
    }
}
