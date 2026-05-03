/// IMPORT
var type = ds_map_find_value(async_load, "type");

if (type == 1)
{
    if (ds_map_find_value(async_load, "socket") == global.AP_socket)
    {
        if (ds_map_find_value(async_load, "success"))
        {
            show_debug_message("Connection failed (no server)");
            global.AP_isAuthenticated = 1;
            network_destroy(global.AP_socket);
            global.AP_socket = -1;
        }
    }
}

if (ds_map_exists(async_load, "buffer"))
{
    var buff = ds_map_find_value(async_load, "buffer");
    buffer_seek(buff, buffer_seek_start, 0);
    var response = buffer_read(buff, buffer_string);
    var data = json_parse(response);
    
    for (var i = 0; i < array_length(data); i++)
    {
        if (variable_struct_exists(data[i], "cmd"))
        {
            // get archipelago multiworld
            if(global.AP_multiworld == 0)
			    global.AP_multiworld = data[0].seed_name;

            switch (data[i].cmd)
            {
                case "Connected":

                    global.AP_slot = data[i].slot;
                    global.AP_isAuthenticated = 2;
                    show_debug_message("Login successful!");

                    global.AP_all_locations_ids = array_concat(data[i].missing_locations, data[i].checked_locations);
                    
                    for (var chapter = 1; chapter <= global.AP_max_chapter; chapter++)
                    {
                        array_push(global.AP_completed_chapters_keys, string(global.AP_slot) + "_chapter_" + string(chapter) + "_completed");
                        if (variable_struct_exists(data[i].slot_data.options, "include_chapter_" + string(chapter)))
                        {
                            global.AP_include_chapters[chapter - 1] = variable_struct_get(data[i].slot_data.options, "include_chapter_" + string(chapter));
                            if (data[i].slot_data.options.randomize_chapters == "all_unlocked")
                            {
                                global.AP_chapter_unlocked[chapter] = global.AP_include_chapters[chapter - 1];
                            }
                        }

                        if (variable_struct_exists(data[i].slot_data.options, "macguffin_chapter_" + string(chapter)))
                            global.AP_macguffin_required[chapter - 1] = variable_struct_get(data[i].slot_data.options, "macguffin_chapter_" + string(chapter));
                    }

                    for (var ii = 0; ii < array_length(data[i].players); ii++)
                    {
                        var slot_info = variable_struct_get(data[i].slot_info, ii + 1);
                        var player = data[i].players[ii];
                        global.AP_player_names[ii + 1] = player.name;
                        global.AP_slotinfo[ii + 1] = slot_info.game;
                    }


                    global.AP_slot = data[i].slot;

                    global.AP_weird_route = data[i].slot_data.options.chosen_route;
                    global.AP_no_mantle = data[i].slot_data.options.randomize_mantle == "mantleless";
                    global.AP_balancing = data[i].slot_data.options.item_balancing;
                    global.remove_starting_equipment = data[i].slot_data.options.remove_starting_equipment;
                    global.AP_secret_bosses_mandatory = data[i].slot_data.options.randomize_secret_bosses == 2;
                    global.AP_deathlink = data[i].slot_data.options.death_link;

                    var path_settings = global.AP_multiworld + "/settings.json"

                    if (file_exists(path_settings))
                    {
                        var file = file_text_open_read(path_settings);
                        var content = file_text_read_string(file);

                        if (content != -1)
                            settings_struct = json_parse(content);

                        global.AP_deathlink = settings_struct.deathLink;
                    }

                    var path_scouting = global.AP_multiworld + "/scouting.json"

                    if (!file_exists(path_scouting))
                    {
                        var missing_locations = data[i].missing_locations;
                        AP_sendLocationScouts(missing_locations);
                    }
                    else
                    {
                        var file = file_text_open_read(path_scouting);
                        var content = file_text_read_string(file);

                        if (content != -1)
                            scouting_struct = json_parse(content);

                        global.AP_location_item = scouting_struct;
                    }

                    AP_write_settings_file();
                    AP_updateTags();
                    AP_getChapterCompletion();
                    
                    break;
                
                case "ConnectionRefused":
                    global.AP_isAuthenticated = 1;
                    show_debug_message("Login failed");
                    network_destroy(global.AP_socket);
                    global.AP_socket = -1;
                    break;
                
                case "ReceivedItems":
                    if (variable_struct_exists(data[i], "items"))
                    {
                        // If we are Chapter Select, looking only for chapter unlock
                        if (!variable_global_exists("chapter"))
                        {
                            for (var ii = 0; ii < array_length(data[i].items); ii++)
                            {
                                if (data[i].items[ii].item >= global.AP_item_offset.chapter_unlock)
                                {
                                    global.AP_chapter_unlocked[data[i].items[ii].item - global.AP_item_offset.chapter_unlock - 1] = true
                                }
                            }
                        }
                        // Receiving items after reconnect
                        else if (!variable_global_exists("AP_item_from_server"))
                        {
                            global.AP_item_from_server = [];
                            for (var ii = 0; ii < array_length(data[i].items); ii++)
                            {
                                global.AP_item_from_server[ii] = data[i].items[ii].item;
                            } 
                        }
                        // Receiving items while playing chapter
                        else
                        {
                            var starting_index = array_length(global.AP_item_from_server);
                            for (var ii = 0; ii < array_length(data[i].items); ii++)
                            {
                                global.AP_item_from_server[starting_index + ii] = data[i].items[ii].item;
                            }
                        }
                    }
                    break;
                case "Bounced":
                    if (variable_struct_exists(data[i], "tags"))
                    {
                        for (var ii = 0; ii < array_length(data[i].tags); ii++)
                        {
                            if (data[i].tags[ii] == "DeathLink")
                            {
                                if (variable_global_exists("chapter"))
                                {
                                    var time;
                                    if (variable_struct_exists(data[i].data, "time"))
                                        if (data[i].data.time == global.AP_deathlink_infos.time)
                                            continue;
                                        else
                                            time = data[i].data.time;
                                    else
                                        time = undefined;

                                    global.AP_deathlink_protected = true;
                                    
                                    var source;
                                    if (variable_struct_exists(data[i].data, "source"))
                                    {
                                        if (data[i].data.source == global.AP_name)
                                            continue;
                                        else
                                            source = data[i].data.source;
                                    }
                                    else
                                        source = undefined;

                                    var cause;
                                    if (variable_struct_exists(data[i].data, "cause"))
                                        cause = data[i].data.cause;
                                    else
                                        cause = undefined;


                                    global.AP_deathlink_infos = {source: source, cause: cause, time: time};
                                    AP_handle_DeathLink();
                                }
                            }
                        }
                    }
                    break;
                case "LocationInfo":
                    if (variable_struct_exists(data[i], "locations"))
                    {
                        global.AP_scouting_raw = data[i].locations;
                        var player_ids = [];
                        for (var ii = 0; ii < array_length(data[i].locations); ii++)
                        {
                            array_push(player_ids, data[i].locations[ii].player);
                            // var item = data[i].locations[ii];
                            // var playerName; var itemName;

                            // if (item.player == global.AP_slot)
                            //     playerName = "<yourself>";
                            // else
                            //     playerName = global.AP_player_names[item.player];
                        }

                        var player_ids_unique = array_unique(player_ids);
                        var games = [];

                        for (var ii = 0; ii < array_length(player_ids_unique); ii++)
                        {
                            array_push(games, global.AP_slotinfo[player_ids_unique[ii]]);
                        }

                        var games_unique = array_unique(games);
                        AP_getDataPackage(games_unique);
                    }
                    break;
                case "DataPackage":
                    if (variable_struct_exists(data[i], "data"))
                    {
                        global.AP_data_package_raw = data[i].data.games;

                        if (!file_exists(global.AP_multiworld + "/datapackage.json"))
                        {
                            var package = data[i].data;
                            package_json = json_stringify(package);
                            var file = file_text_open_write(global.AP_multiworld + "/datapackage.json");
                            file_text_write_string(file, package_json);
                            file_text_close(file);
                        }

                        if (!file_exists(global.AP_multiworld + "/scouting.json"))
                        {
                            var scouting = {};

                            for (var ii = 0; ii < array_length(global.AP_scouting_raw); ii++)
                            {
                                var playerName; var itemName; var flags;

                                if (global.AP_scouting_raw[ii].player == global.AP_slot)
                                    playerName = "<yourself>";
                                else
                                    playerName = global.AP_player_names[global.AP_scouting_raw[ii].player];

                                var gamePlayed = global.AP_slotinfo[global.AP_scouting_raw[ii].player];

                                var game_data = variable_struct_get(global.AP_data_package_raw, gamePlayed);

                                itemName = struct_find_key_by_value(game_data.item_name_to_id, global.AP_scouting_raw[ii].item);
                                flags = global.AP_scouting_raw[ii].flags;

                                variable_struct_set(scouting, global.AP_scouting_raw[ii].location, {playerName: playerName, itemName: itemName, flags: flags});
                            }

                            global.AP_location_item = scouting;

                            scouting_json = json_stringify(scouting);
                            var file = file_text_open_write(global.AP_multiworld + "/scouting.json");
                            file_text_write_string(file, scouting_json);
                            file_text_close(file);
                        }
                    }
                    break;
                case "Retrieved":
                    if (variable_struct_exists(data[i], "keys"))
                    {
                        var keys = variable_struct_get_names(data[i].keys);

                        for (var chapter = 1; chapter <= global.AP_max_chapter; chapter++)
                        {
                            if (array_contains(keys, global.AP_completed_chapters_keys[chapter - 1]))
                            {
                                var value = variable_struct_get(data[i].keys, global.AP_completed_chapters_keys[chapter - 1]);
                                if (value != undefined)
                                {
                                    global.AP_completed_chapters[chapter - 1] = value;
                                }
                            }
                        }
                    }
                    break;
            }
        }
    }
}

function array_unique(array)
{
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

function array_contains(array, value)
{
    for (var i = 0; i < array_length(array); i++)
    {
        if (array[i] == value)
            return true;
    }
    return false;
}

function array_concat(array1, array2)
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

function struct_find_key_by_value(_struct, _value)
{
    var _keys = variable_struct_get_names(_struct);
    for (var i = 0; i < array_length(_keys); i++)
    {
        if (variable_struct_get(_struct, _keys[i]) == _value)
            return _keys[i];
    }
    return undefined;
}