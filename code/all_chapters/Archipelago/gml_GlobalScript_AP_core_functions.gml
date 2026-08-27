/// FUNCTIONS

function AP_create()
{
    trying_to_reconnect = false;
    showing_special_textbox = false;
}

function AP_step()
{
    AP_connection_checker();

    if (showing_special_textbox && !instance_exists(obj_dialoguer))
    {
        showing_special_textbox = false;
        global.interact = 0;
    }

    AP_proceed_special_item_textbox();
}

function AP_connection_checker()
{
    if (!obj_archipelago_client.AP_isAuthenticated())
    {
        if (obj_archipelago_client.AP_isDisconnected())
        {
            obj_archipelago_client.AP_connect();
            
            if (!instance_exists(obj_dialoguer) && AP_can_display_textbox())
            {
                showing_special_textbox = true;
                script_execute(scr_writetext, 0, string("\\s0* (Connection failed ({0}). We are gonna try to reconnect after this textbox...)/%", global.AP_connection_errors == undefined ? "unknown" : string(global.AP_connection_errors)), 0, 6);
            }
        }
        else
        {
            if (!instance_exists(obj_dialoguer) && AP_can_display_textbox())
            {
                script_execute(scr_writetext, 0, string("\\s0* (You are still connecting, please wait...)/%", 0, 6));
            }
        }

        global.interact = 1;
        trying_to_reconnect = true;
    }
    else if (trying_to_reconnect && obj_archipelago_client.AP_isAuthenticated() && !instance_exists(obj_dialoguer))
    {
        trying_to_reconnect = false;
        AP_sendLocation(global.AP_locations_during_disconnect);
        global.AP_locations_during_disconnect = []
    }
}

function AP_save()
{
  file_text_writeln(myfileid);

  if array_length(global.AP_item_got_in_current_chapter) == undefined
      global.AP_item_got_in_current_chapter = [];

  file_text_write_real(myfileid, array_length(global.AP_item_got_in_current_chapter));

  for (i = 0; i < array_length(global.AP_item_got_in_current_chapter); i++)
  {
      file_text_writeln(myfileid);
      file_text_write_real(myfileid, global.AP_item_got_in_current_chapter[i]);
  }
  
  for (i = 0; i < array_length(global.customflags); i += 1)
  {
      file_text_writeln(myfileid);
      file_text_write_real(myfileid, global.customflags[i]);
  }
  
  file_text_writeln(myfileid);
  file_text_write_real(myfileid, global.MacGuffin_count);

  file_text_writeln(myfileid);
  file_text_write_real(myfileid, global.AP_progressive_current_index.kris_weapon);

  file_text_writeln(myfileid);
  file_text_write_real(myfileid, global.AP_progressive_current_index.susie_weapon);

  file_text_writeln(myfileid);
  file_text_write_real(myfileid, global.AP_progressive_current_index.ralsei_weapon);

  file_text_writeln(myfileid);
  file_text_write_real(myfileid, global.AP_progressive_current_index.noelle_weapon);

  file_text_writeln(myfileid);
  file_text_write_real(myfileid, global.AP_current_route);
}

function AP_load()
{
    global.AP_item_got_in_current_chapter = [];
    global.AP_is_first_sync = true;
    global.customflags = [];
    global.flag[64] = #GetMaxStorage();

    var array_size = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    
    for (index = 0; index < array_size; index++)
    {
        global.AP_item_got_in_current_chapter[index] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }

    for (i = 0; i < #GetMaxCustomFlag(); i += 1)
    {
        global.customflags[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    global.MacGuffin_count = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.kris_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.susie_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.ralsei_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_progressive_current_index.noelle_weapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    global.AP_current_route = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);

    AP_sync_item_from_server();
}

function AP_game_start()
{
  if (!instance_exists(obj_archipelago_client))
  {
      instance_create(0, 0, obj_archipelago_client);
      if(obj_archipelago_client.AP_isDisconnected())
          obj_archipelago_client.AP_connect();
  }

  global.AP_item_got_in_current_chapter = [];
  global.customflags = [];
  global.AP_items_waiting_to_receive = undefined;
  global.MacGuffin_count = 0;
  global.AP_progressive_current_index = {
      kris_weapon: 0,
      susie_weapon: 0,
      ralsei_weapon: 0,
      noelle_weapon: 0,
  }

  for (var i = 0; i < #GetMaxCustomFlag(); i++)
      global.customflags[i] = 0;
}

function AP_game_start_post_connexion()
{
    // Prevent to execute if reconnected during the game
    if (global.AP_game_start_post_connexion_done) return;

    AP_fill_progressive_weapon_struct();

    if (global.AP_unlock_fun_gang_actions)
        global.flag[34] = true;
    
    if (global.AP_have_starwalker)
        global.flag[254] = 1;
    
    global.AP_game_start_post_connexion_done = true;
    if (global.AP_remove_starting_equipment)
    {
        global.charweapon[1] = 1;
        global.charweapon[2] = 2;
        global.charweapon[3] = 3;
        global.charweapon[4] = 12;
    }
    else
    {
        switch(global.chapter){
            case 1:
                global.charweapon[1] = 1;
                global.charweapon[2] = 2;
                global.charweapon[3] = 3;
                break;
            case 2:
                global.charweapon[1] = 1;
                global.chararmor1[1] = 1;
                global.chararmor2[1] = 1;

                global.charweapon[2] = 2;
                global.chararmor1[2] = 1;
                global.chararmor2[2] = 1;

                global.charweapon[3] = 3;
                global.chararmor1[3] = 1;
                global.chararmor2[3] = 4;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
            case 3:
                global.charweapon[1] = 16;
                global.chararmor1[1] = 1;
                global.chararmor2[1] = 10;
                
                global.charweapon[2] = 17;
                global.chararmor1[2] = 1;
                global.chararmor2[2] = 10;

                global.charweapon[3] = 18;
                global.chararmor1[3] = 25;
                global.chararmor2[3] = 10;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
            case 4:
                global.charweapon[1] = 23;
                global.chararmor1[1] = 25;
                global.chararmor2[1] = 10;

                global.charweapon[2] = 24;
                global.chararmor1[2] = 25;
                global.chararmor2[2] = 10;

                global.charweapon[3] = 25;
                global.chararmor1[3] = 25;
                global.chararmor2[3] = 10;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
            case 5:
                global.charweapon[1] = 53;
                global.chararmor1[1] = 25;
                global.chararmor2[1] = 25;

                global.charweapon[2] = 24;
                global.chararmor1[2] = 25;
                global.chararmor2[2] = 25;

                global.charweapon[3] = 25;
                global.chararmor1[3] = 25;
                global.chararmor2[3] = 25;

                global.charweapon[4] = 12;
                global.chararmor1[4] = 14;
                global.chararmor2[4] = 22;
                break;
        }
    }

    if(global.AP_unlock_kris)
        global.maxhp[1] = -666
    else
        global.maxhp[1] = AP_get_character_max_hp(1);


    if (global.AP_unlock_characters)
    {
        global.maxhp[2] = -666;
        global.maxhp[3] = -666;
        global.maxhp[4] = -666;
    }
    else
    {
        global.maxhp[2] = AP_get_character_max_hp(2);
        global.maxhp[3] = AP_get_character_max_hp(3);
        global.maxhp[4] = AP_get_character_max_hp(4);
    }

    global.hp[1] = global.maxhp[1];
    global.hp[2] = global.maxhp[2];
    global.hp[3] = global.maxhp[3];
    global.hp[4] = global.maxhp[4];

    AP_sync_item_from_server();
}

function AP_fill_progressive_weapon_struct()
{
    global.AP_progressive_weapons_ids = {}

    if (global.AP_progressive_weapons.kris)
    {
        global.AP_progressive_weapons_ids.kris = [];
        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.kris, 5); // SpookySword

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.kris, 14); // BounceBlade

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.kris, 16); // MechaSaber

        if (global.AP_include_chapters[0] && global.AP_include_unused_items >= 1)
            array_push(global.AP_progressive_weapons_ids.kris, 8); // Trefoil

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.kris, 23); // Saber10
        
        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.kris, 50); // JingleBlade

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.kris, 53); // Winglade

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.kris, 30); // WoodBlade2

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.kris, 33); // AquaKnife

        if (global.AP_include_chapters[1] && global.AP_include_unused_items >= 1 && (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE || global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES))
            array_push(global.AP_progressive_weapons_ids.kris, 11); // TwistedSwd

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.kris, 26); // Blackshard
        
        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.kris, 4); // EverybodyWeapon
    }
    if (global.AP_progressive_weapons.susie)
    {
        global.AP_progressive_weapons_ids.susie = [];
        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.susie, 6); // Brave Ax

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.susie, 17); // AutoAxe

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.susie, 24); // ToxicAxe

        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.susie, 7); // Devilsknife

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.susie, 54); // AbsorbAx

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.susie, 31); // Thatchet

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.susie, 52); // JusticeAxe

        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.susie, 4); // EverybodyWeapon
        
    }
    if (global.AP_progressive_weapons.ralsei)
    {
        global.AP_progressive_weapons_ids.ralsei = [];

        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.ralsei, 10); // DaintyScarf

        if (global.AP_include_chapters[1] && global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.ralsei, 15); // Cheerscarf

        if (global.AP_include_chapters[0])
            array_push(global.AP_progressive_weapons_ids.ralsei, 9); // Ragger

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.ralsei, 18); // FiberScarf

        if (global.AP_include_chapters[2])
            array_push(global.AP_progressive_weapons_ids.ralsei, 25); // FlexScarf

        if (global.AP_include_chapters[3])
            array_push(global.AP_progressive_weapons_ids.ralsei, 51); // ScarfMark

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.ralsei, 19); // Ragger2

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.ralsei, 37); // MistleWP

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.ralsei, 32); // BlueShoes

        if (global.AP_include_chapters[1])
            array_push(global.AP_progressive_weapons_ids.ralsei, 21); // PuppetScarf

        if (global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.ralsei, 35); // BrokenScarf

        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.ralsei, 4); // EverybodyWeapon
    }
    if (global.AP_progressive_weapons.noelle)
    {
        global.AP_progressive_weapons_ids.noelle = [];

        if (global.AP_include_chapters[1] && (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE || global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES))
            array_push(global.AP_progressive_weapons_ids.noelle, 22); // FreezeRing

        if (global.AP_include_unused_items == 1 && global.AP_include_chapters[4])
            array_push(global.AP_progressive_weapons_ids.noelle, 36); // GildedRose

        if (global.AP_include_chapters[1] && (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE || global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES))
            array_push(global.AP_progressive_weapons_ids.noelle, 13); // Thornring

        if (global.AP_include_unused_items == 1)
            array_push(global.AP_progressive_weapons_ids.noelle, 4); // EverybodyWeapon
    }
}

function AP_update_current_room(room_name)
{
    if (!instance_exists(obj_archipelago_client))
    {
        instance_create(0, 0, obj_archipelago_client);
    }
    
    if(obj_archipelago_client.AP_isDisconnected())
        exit;

    current_location = { current_room: room_name }

    obj_archipelago_client.AP_setDataStorage("current_location", current_location, "update")
}