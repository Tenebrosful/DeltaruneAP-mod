/// FUNCTIONS

function AP_async_handle_roominfo(data)
{
  global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.GOT_ROOMINFO;
  if (variable_struct_exists(data, "games"))
  {
      var ownGame = false;
      for (var ii = 0; ii < array_length(data.games); ii++)
      {
          if (data.games[ii] == "Archipelago") continue;

          if (data.games[ii] == "DELTARUNE")
          {
              if (!ownGame)
              {
                  ownGame = true;
                  continue;
              }
          }

          if (!AP_array_contains(global.AP_other_games, data.games[ii]))
          {
              array_push(global.AP_other_games, data.games[ii])
          }
      }
  }

  AP_sendConnectionInfo();
}

function AP_async_handle_connected(data)
{
  AP_async_copy_player_infos(data)
  global.AP_slot = data.slot;
  global.AP_team = data.team;
  global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.CONNECTED;
  global.AP_connection_errors = undefined;
  show_debug_message("Login successful!");

  global.AP_all_locations_ids = AP_array_concat(data.missing_locations, data.checked_locations);
  global.AP_remaining_locations = data.missing_locations;

  AP_async_read_option_unlocked_chapters(data);

  global.AP_slot = data.slot;

  AP_async_read_options(data);
  AP_handle_old_saves();
  AP_read_settings_override_file();
  AP_async_check_scouting_file_on_connect(data);
}

function AP_async_copy_player_infos(data)
{
  for (var ii = 0; ii < array_length(data.players); ii++)
  {
      var slot_info = variable_struct_get(data.slot_info, ii + 1);
      var player = data.players[ii];
      global.AP_player_names[ii + 1] = player.name;
      global.AP_slotinfo[ii + 1] = slot_info.game;
  }
}

function AP_async_read_option_unlocked_chapters(data)
{
  for (var chapter = 1; chapter <= global.AP_max_chapter; chapter++)
  {
      if (variable_struct_exists(data.slot_data.options, "include_chapter_" + string(chapter)))
      {
          global.AP_include_chapters[chapter - 1] = variable_struct_get(data.slot_data.options, "include_chapter_" + string(chapter));
          if (data.slot_data.options.randomize_chapters == global.AP_ENUM_RANDOMIZE_CHAPTER.ALL_UNLOCKED)
          {
              global.AP_chapter_unlocked[chapter - 1] = global.AP_include_chapters[chapter - 1];
          }
      }

      if (variable_struct_exists(data.slot_data.options, "macguffin_chapter_" + string(chapter)))
          global.AP_macguffin_required[chapter - 1] = variable_struct_get(data.slot_data.options, "macguffin_chapter_" + string(chapter));
  }

  if (data.slot_data.options.randomize_chapters == global.AP_ENUM_RANDOMIZE_CHAPTER.ALL_UNLOCKED)
  {
      global.AP_loaded_unlocked_chapter = true;
  }
}

function AP_async_read_options(data)
{
  if (variable_struct_exists(data.slot_data.options, "chosen_route"))
  {
      global.AP_route_from_settings = data.slot_data.options.chosen_route;
      if (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES)
      {
          global.AP_current_route = global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS;
      }
      else
      {
          global.AP_current_route = data.slot_data.options.chosen_route;
      }
  }

  if (variable_struct_exists(data.slot_data, "randomized"))
  {
      if (variable_struct_exists(data.slot_data.randomized, "ost"))
          global.AP_ost_mapping = data.slot_data.randomized.ost
  }

  if (variable_struct_exists(data.slot_data.options, "shuffle_ost"))
      global.AP_ost_shuffle = data.slot_data.options.shuffle_ost;
  if (variable_struct_exists(data.slot_data.options, "shadow_mantle_holder_as_secret_boss"))
      global.AP_shadow_mantle_holder_as_secret_boss = data.slot_data.options.shadow_mantle_holder_as_secret_boss;
  if (variable_struct_exists(data.slot_data.options, "allow_doom_board_without_all_characters"))
      global.AP_allow_doom_board_without_all_characters = data.slot_data.options.allow_doom_board_without_all_characters;
  if (variable_struct_exists(data.slot_data.options, "have_starwalker"))
      global.AP_have_starwalker = data.slot_data.options.have_starwalker;
  if (variable_struct_exists(data.slot_data.options, "chapter_1_recruit")) 
      global.AP_chapter_1_recruit = data.slot_data.options.chapter_1_recruit;
  if (variable_struct_exists(data.slot_data.options, "better_odds"))
      global.AP_better_odds = data.slot_data.options.better_odds;
  if (variable_struct_exists(data.slot_data.options, "pink_twin_ribbon_unnerf"))
      global.AP_pink_twin_ribbon_unnerf = data.slot_data.options.pink_twin_ribbon_unnerf;
  if (variable_struct_exists(data.slot_data.options, "item_balancing"))
      global.AP_balancing = data.slot_data.options.item_balancing;
  if (variable_struct_exists(data.slot_data.options, "remove_starting_equipment"))
      global.AP_remove_starting_equipment = data.slot_data.options.remove_starting_equipment;
  if (variable_struct_exists(data.slot_data.options, "unlock_fun_gang_actions"))
      global.AP_unlock_fun_gang_actions = data.slot_data.options.unlock_fun_gang_actions;
  if (variable_struct_exists(data.slot_data.options, "randomize_secret_bosses"))
      global.AP_secret_bosses_mandatory = data.slot_data.options.randomize_secret_bosses == 2;
  if (variable_struct_exists(data.slot_data.options, "unlock_characters"))
  {
      global.AP_unlock_characters = data.slot_data.options.unlock_characters >= 1
      global.AP_unlock_kris = data.slot_data.options.unlock_characters == 1
  }
  if (variable_struct_exists(data.slot_data.options, "death_link"))
      global.AP_deathlink = data.slot_data.options.death_link;

  if (variable_struct_exists(data.slot_data.options, "death_link_group"))
      global.AP_deathlink_group = data.slot_data.options.death_link_group;

  if (variable_struct_exists(data.slot_data.options, "damage_link"))
      global.AP_damagelink = data.slot_data.options.damage_link;

  if (variable_struct_exists(data.slot_data.options, "damage_link_group"))
      global.AP_damagelink_group = data.slot_data.options.damage_link_group;

  if (variable_struct_exists(data.slot_data.options, "progressive_kris_weapons"))
      global.AP_progressive_weapons.kris = data.slot_data.options.progressive_kris_weapons;
  if (variable_struct_exists(data.slot_data.options, "progressive_susie_weapons"))
      global.AP_progressive_weapons.susie = data.slot_data.options.progressive_susie_weapons;
  if (variable_struct_exists(data.slot_data.options, "progressive_ralsei_weapons"))
      global.AP_progressive_weapons.ralsei = data.slot_data.options.progressive_ralsei_weapons;
  if (variable_struct_exists(data.slot_data.options, "progressive_noelle_weapons"))
      global.AP_progressive_weapons.noelle = data.slot_data.options.progressive_noelle_weapons;

  if (variable_struct_exists(data.slot_data.options, "include_unused_items"))
      global.AP_include_unused_items = data.slot_data.options.include_unused_items;
}

function AP_async_check_scouting_file_on_connect(data)
{
  var path_scouting = AP_get_save_folder_prefix() + "scouting.json"

  var is_scouting_in_cache = file_exists(path_scouting)

  if (!is_scouting_in_cache)
  {
      var missing_locations = data.missing_locations;
      global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.WAITING_FOR_SCOUTING;
      AP_sendLocationScouts(missing_locations);
  }
  else
  {
      var file = file_text_open_read(path_scouting);
      var content = file_text_read_string(file);
      file_text_close(file);

      if (content != -1)
          scouting_struct = json_parse(content);

      global.AP_location_item = scouting_struct;
      AP_postScouting();
  }
}

function AP_async_handle_connectionrefused(data)
{
  global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.ERROR_CONNECTION_REFUSED;
  if (variable_struct_exists(data, "errors"))
  {
      global.AP_connection_errors = data.errors
  }
  show_debug_message("Login failed");
}

function AP_async_receiveditems(data)
{
  if (variable_struct_exists(data, "items"))
  {
      // If we are Chapter Select, looking only for chapter unlock
      if (!variable_global_exists("chapter"))
      {
          for (var ii = 0; ii < array_length(data.items); ii++)
          {
              if (data.items[ii].item >= global.AP_item_offset.chapter_unlock && data.items[ii].item < global.AP_item_offset.other_unlock)
              {
                  global.AP_chapter_unlocked[data.items[ii].item - global.AP_item_offset.chapter_unlock - 1] = true
              }
          }

          global.AP_loaded_unlocked_chapter = true;
      }
      // Receiving items during a chapter
      else if (variable_global_exists("chapter"))
      {
          global.AP_is_receiving_items = true
          starting_index = data.index;

          for (var ii = 0; ii < array_length(data.items); ii++)
          {
              global.AP_item_from_server[starting_index + ii] = data.items[ii].item;

              // if starting index is not 0 then it's not the first connection packet
              if (starting_index != 0)
              {
                  item_data = data.items[ii]

                  playerName = global.AP_player_names[item_data.player]
                  itemName = variable_struct_get(global.AP_id_to_itemname, string(item_data.item))

                  array_push(obj_archipelago_toast_notificator.current_notification, new AP_toast_notification(itemName, AP_item_flag_to_color(item_data.flags), playerName, false));

                  if (global.chapter == 5 && item_data.item == 1021) // Pink Coin
                  {
                      snd_play(snd_pink_coin);
                  }
              }
          }

          // After updating server array, we ask for a sync with the save only if we are in game (eg. AP_item_got_in_current_chapter exists)
          if (variable_global_exists("AP_item_got_in_current_chapter") && global.AP_game_start_post_connexion_done)
          {
              AP_sync_item_from_server();
          }

          global.AP_is_receiving_items = false;
      }
  }
}

function AP_async_handle_bounced(data)
{
  if (variable_struct_exists(data, "tags"))
  {
      for (var ii = 0; ii < array_length(data.tags); ii++)
      {
          if (data.tags[ii] == ("DeathLink" + global.AP_deathlink_group) && !global.AP_deathlink_protected)
          {
              AP_async_handle_bounced_deathlink(data)
          }
          else if (data.tags[ii] == ("SharedDamage" + global.AP_damagelink_group) && data.data.uuid != global.AP_uuid && !global.AP_damagelink_protected)
          {
              AP_async_handle_bounced_damagelink(data)
          }
      }
  }
}

function AP_async_handle_bounced_deathlink(data)
{
  if (variable_global_exists("chapter"))
  {
      var time;
      if (variable_struct_exists(data.data, "time"))
          time = data.data.time;
      else
          time = undefined;
      
      var source;
      if (variable_struct_exists(data.data, "source"))
          source = data.data.source;
      else
          source = undefined;

      var cause;
      if (variable_struct_exists(data.data, "cause"))
          cause = data.data.cause;
      else
          cause = undefined;

      var uuid;
      if (variable_struct_exists(data.data, "uuid"))
          uuid = data.data.uuid;
      else
          uuid = undefined;

      if (uuid != undefined && uuid == global.AP_uuid)
      {
          exit;
      }
      else if (source != undefined && source == global.AP_name)
      {
          exit;
      }

      global.AP_deathlink_infos = {source: source, cause: cause, time: time, uuid: uuid};
      AP_handle_DeathLink();
  }
}

function AP_async_handle_bounced_damagelink(data)
{
  if (variable_global_exists("chapter"))
  {
      var time;
      if (variable_struct_exists(data.data, "time"))
          time = data.data.time;
      else
          time = undefined;
      
      var source;
      if (variable_struct_exists(data.data, "source"))
          source = data.data.source;
      else
          source = undefined;

      var uuid;
      if (variable_struct_exists(data.data, "uuid"))
          uuid = data.data.uuid;
      else
          uuid = undefined;

      var damage_points;
      if (variable_struct_exists(data.data, "damage_points"))
          damage_points = data.data.damage_points;
      else
          damage_points = 0;

      global.AP_damagelink_infos = {source: source, time: time, uuid: uuid, damage_points: damage_points}
      AP_handle_Damagelink();
  }
}

function AP_async_handle_locationinfo(data)
{
  if (variable_struct_exists(data, "locations"))
  {
      global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.GOT_SCOUTING;
      global.AP_scouting_raw = data.locations;
      var player_ids = [];
      for (var ii = 0; ii < array_length(data.locations); ii++)
      {
          array_push(player_ids, data.locations[ii].player);
      }

      var player_ids_unique = AP_array_unique(player_ids);
      var games = ["DELTARUNE"];

      for (var ii = 0; ii < array_length(player_ids_unique); ii++)
      {
          array_push(games, global.AP_slotinfo[player_ids_unique[ii]]);
      }

      var games_unique = AP_array_unique(games);

      global.AP_requested_datapackage = array_length(games_unique);
      global.AP_resquest_list = games_unique;
      global.AP_last_datapackage_requested = global.AP_resquest_list[0];
      AP_getDataPackage([global.AP_resquest_list[0]]);
  }
}

function AP_async_handle_datapackage(data)
{
  if (variable_struct_exists(data, "data"))
  {
      global.AP_received_datapackage++;
      AP_add_new_datapackage(data.data)

      if (global.AP_received_datapackage != global.AP_requested_datapackage)
      {
          global.AP_last_datapackage_requested = global.AP_resquest_list[global.AP_received_datapackage]
          AP_getDataPackage([global.AP_resquest_list[global.AP_received_datapackage]]);
          exit;
      }

      global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.GOT_DATA_PACKAGE;

      if (!file_exists(AP_get_save_folder_prefix() +  "datapackage.json"))
      {
          var package = global.AP_data_package_raw;
          package_json = json_stringify(package);
          var file = file_text_open_write(AP_get_save_folder_prefix() +  "datapackage.json");
          file_text_write_string(file, package_json);
          file_text_close(file);
      }

      if (!file_exists(AP_get_save_folder_prefix() +  "scouting.json"))
      {
          var scouting = {};

          for (var ii = 0; ii < array_length(global.AP_scouting_raw); ii++)
          {
              var playerName; var itemName; var flags;

              if (global.AP_scouting_raw[ii].player == global.AP_slot)
                  playerName = "<yourself>";
              else
                  playerName = AP_sanitizeString(global.AP_player_names[global.AP_scouting_raw[ii].player]);

              var gamePlayed = global.AP_slotinfo[global.AP_scouting_raw[ii].player];

              var game_data = variable_struct_get(global.AP_data_package_raw, gamePlayed);

              itemName = AP_sanitizeString(AP_struct_find_key_by_value(game_data.item_name_to_id, global.AP_scouting_raw[ii].item));
              flags = global.AP_scouting_raw[ii].flags;

              variable_struct_set(scouting, global.AP_scouting_raw[ii].location, {playerName: playerName, itemName: itemName, flags: flags});
          }

          global.AP_location_item = scouting;

          scouting_json = json_stringify(scouting);
          var file = file_text_open_write(AP_get_save_folder_prefix() +  "scouting.json");
          file_text_write_string(file, scouting_json);
          file_text_close(file);
      }
  }

  AP_postScouting();
}

function AP_async_handle_retrieved(data)
{
  if (variable_struct_exists(data, "keys"))
  {
      var keys = variable_struct_get_names(data.keys);

      if (variable_struct_exists(keys, AP_getDatastoragePrefix() + "completed_chapters"))
      {
          AP_handle_retreived_completed_chapters(variable_struct_get(keys, AP_getDatastoragePrefix() + "completed_chapters"))
      }
  }
}

function AP_async_handle_setreply(data)
{
  if (data.key == AP_getDatastoragePrefix() + "completed_chapters")
    AP_handle_retreived_completed_chapters(data.value)
}

// UTILITIES
function AP_array_unique(array)
{
    if array_length(array) == 0 return [];
    
    var result = [array[0]];

    for (var i = 1; i < array_length(array); i++)
    {
        var unique = true;
        for (var j = 0; j < array_length(result); j++)
        {
            if (result[j] == array[i])
            {
                unique = false;
                break;
            }
        }

        if (unique)
        {
            array_push(result, array[i]);
        }
    }
    return result;
}

function AP_array_contains(array, value)
{
    for (var i = 0; i < array_length(array); i++)
    {
        if (array[i] == value)
            return true;
    }
    return false;
}

function AP_array_concat(array1, array2)
{
    var res = [];

    for (var i = 0; i < array_length(array1); i++)
    {
        array_push(res, array1[i]);
    }

    for (var i = 0; i < array_length(array2); i++)
    {
        array_push(res, array2[i]);
    }

    return res;
}

function AP_struct_find_key_by_value(_struct, _value)
{
    var _keys = variable_struct_get_names(_struct);
    for (var i = 0; i < array_length(_keys); i++)
    {
        if (variable_struct_get(_struct, _keys[i]) == _value)
            return _keys[i];
    }
    return undefined;
}