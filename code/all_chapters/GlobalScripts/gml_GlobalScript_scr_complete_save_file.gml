/// IMPORT .ignore if CHAPTER_1 || CHAPTER_2
function scr_complete_save_file()
{
    _remfilechoice = global.filechoice;
    global.filechoice += 3;
    scr_set_ini_value(global.chapter, global.filechoice, "SideB", scr_sideb_active());
    scr_save();
    global.filechoice = _remfilechoice;
}

function scr_chapter_save_file_exists(arg0)
{
    var _exists = false;
    
    for (var i = 0; i < 3; i++)
    {
        _exists = ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(arg0) + "_" + string(i));
        
        if (_exists == true)
            break;
    }
    
    return _exists;
}

function scr_completed_chapter(arg0)
{
    return ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(arg0) + "_" + string(global.filechoice + 3));
}

function scr_completed_chapter_any_slot(arg0)
{
    return true;
}

function scr_get_secret_boss_result(arg0)
{
    var fought_flag = scr_get_secret_boss_flag(arg0);
    return global.flag[fought_flag];
}

function scr_defeated_secret_boss_any_slot(arg0)
{
    return true;
}

function scr_spared_secret_boss_any_slot(arg0)
{
    return true;
}

function scr_fought_secret_boss(arg0)
{
    return scr_get_secret_boss_result(arg0) > 0;
}

function scr_fought_secret_boss_any_slot(arg0)
{
    return true;
}

function scr_get_secret_boss_flag(arg0)
{
    var fought_flag = 241;
    
    switch (arg0)
    {
        case 1:
            fought_flag = 241;
            break;
        
        case 2:
            fought_flag = 571;
            break;
        
        case 3:
            fought_flag = 1047;
            break;
        
        case 4:
            fought_flag = 852;
            break;
        
        case 5:
            fought_flag = 1908;
            break;
        
        default:
            break;
    }
    
    return fought_flag;
}

function scr_enable_chapter_skip(arg0)
{
    var _skip_flag = 38;
    
    switch (arg0)
    {
        case 2:
            _skip_flag = 39;
            break;
        
        case 3:
            _skip_flag = 40;
            break;
        
        case 4:
            _skip_flag = 41;
            break;
        
        default:
            break;
    }
    
    global.tempflag[_skip_flag] = 1;
}

#if CHAPTER_3
function scr_get_knight_total_loss_count()
{
    var _times_lost = 0;
    var _chapter = 3;
    var _fought_boss = scr_fought_secret_boss_any_slot(_chapter);
    
    if (_fought_boss)
    {
        for (var i = 0; i < 3; i++)
        {
            var _slot = i;
            var _result = scr_get_ura_value(_chapter, _slot);
            
            if (_result == 2)
                _times_lost++;
        }
    }
    
    return _times_lost;
}

function scr_get_knight_total_attempts()
{
    var _times_attempted = 0;
    var _chapter = 3;
    var _fought_boss = scr_fought_secret_boss_any_slot(_chapter);
    
    if (_fought_boss)
    {
        for (var i = 0; i < 3; i++)
        {
            var _slot = i;
            var _result = scr_get_ura_value(_chapter, _slot);
            
            if (_result > 0)
                _times_attempted++;
        }
    }
    
    return _times_attempted;
}

#endif
function scr_set_ini_value(arg0, arg1, arg2, arg3)
{
    var iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    ini_write_real(scr_ini_chapter(arg0, arg1), arg2, arg3);
    ossafe_ini_close();
}

function scr_get_ini_value_all_slots(arg0, arg1)
{
    var _ini_file = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    var _list = [];
    
    for (var i = 0; i < 6; i++)
    {
        var _slot = i;
        var _value = ini_read_real(scr_ini_chapter(arg0, _slot), arg1, 0);
        _list[i][0] = _slot;
        _list[i][1] = _value;
    }
    
    ossafe_ini_close();
    return _list;
}

function scr_get_ini_value(arg0, arg1, arg2)
{
    var _ini_file = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    var _ini_value = ini_read_real(scr_ini_chapter(arg0, arg1), arg2, 0);
    ossafe_ini_close();
    return _ini_value;
}

function scr_get_ura_value(arg0, arg1)
{
    var _ini_file = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    var _ini_value = ini_read_real("URA", string(arg0) + "_" + string(arg1), 0);
    ossafe_ini_close();
    return _ini_value;
}

function scr_set_ura_value(arg0, arg1, arg2)
{
    var _ini_file = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    var _ini_value = ini_write_real("URA", string(arg0) + "_" + string(arg1), arg2);
    ossafe_ini_close();
    return _ini_value;
}

function scr_store_ura_result(arg0, arg1, arg2)
{
    if (arg2 == 0)
        exit;
    
    var slot = arg1;
    
    if (slot > 2)
        slot -= 3;
    
    var current_result = scr_get_ura_value(arg0, slot);
    var new_result = arg2;
    
    if ((arg2 + current_result) == 3)
        new_result = 3;
    
    scr_set_ura_value(arg0, slot, new_result);
}
#if CHAPTER_3

function scr_get_vhs_ini_value()
{
    var _ini_file = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    var _ini_value = ini_read_real("VHS", "watched", 0);
    ossafe_ini_close();
    return _ini_value;
}

function scr_set_vhs_ini_value(arg0)
{
    var iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    ini_write_real("VHS", "watched", arg0);
    ossafe_ini_close();
    ossafe_savedata_save();
}
#endif
#if CHAPTER_5
function scr_get_chapter_flag(arg0, arg1, arg2)
{
    var flag_value = 0;
    var file_name = AP_get_save_folder_prefix() + "filech" + string(arg0) + "_" + string(arg1 + 3);
    
    if (ossafe_file_exists(file_name))
    {
        var file = file_name;
        var myfileid = ossafe_file_text_open_read(file);
        ossafe_file_text_read_string(myfileid);
        ossafe_file_text_readln(myfileid);
        
        if (!global.is_console)
        {
            for (var i = 0; i < 6; i += 1)
            {
                ossafe_file_text_read_string(myfileid);
                ossafe_file_text_readln(myfileid);
            }
        }
        else
        {
            var othername_list = scr_ds_list_read(myfileid);
            ds_list_destroy(othername_list);
            ossafe_file_text_readln(myfileid);
        }
        
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        
        if (global.is_console)
        {
            var hp_list = scr_ds_list_read(myfileid);
            ds_list_destroy(hp_list);
            ossafe_file_text_readln(myfileid);
            var maxhp_list = scr_ds_list_read(myfileid);
            ds_list_destroy(maxhp_list);
            ossafe_file_text_readln(myfileid);
            var at_list = scr_ds_list_read(myfileid);
            ds_list_destroy(at_list);
            ossafe_file_text_readln(myfileid);
            var df_list = scr_ds_list_read(myfileid);
            ds_list_destroy(df_list);
            ossafe_file_text_readln(myfileid);
            var mag_list = scr_ds_list_read(myfileid);
            ds_list_destroy(mag_list);
            ossafe_file_text_readln(myfileid);
            var guts_list = scr_ds_list_read(myfileid);
            ds_list_destroy(guts_list);
            ossafe_file_text_readln(myfileid);
            var charweapon_list = scr_ds_list_read(myfileid);
            ds_list_destroy(charweapon_list);
            ossafe_file_text_readln(myfileid);
            var chararmor1_list = scr_ds_list_read(myfileid);
            ds_list_destroy(chararmor1_list);
            ossafe_file_text_readln(myfileid);
            var chararmor2_list = scr_ds_list_read(myfileid);
            ds_list_destroy(chararmor2_list);
            ossafe_file_text_readln(myfileid);
            var weaponstyle_list = scr_ds_list_read(myfileid);
            ds_list_destroy(weaponstyle_list);
            ossafe_file_text_readln(myfileid);
        }
        
        for (var i = 0; i < 5; i += 1)
        {
            if (!global.is_console)
            {
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
            }
            
            for (var q = 0; q < 4; q += 1)
            {
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
            }
            
            for (var j = 0; j < 12; j += 1)
            {
                ossafe_file_text_read_real(myfileid);
                ossafe_file_text_readln(myfileid);
            }
        }
        
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        
        if (global.is_console)
        {
            var item_list = scr_ds_list_read(myfileid);
            ds_list_destroy(item_list);
            ossafe_file_text_readln(myfileid);
            var keyitem_list = scr_ds_list_read(myfileid);
            ds_list_destroy(keyitem_list);
            ossafe_file_text_readln(myfileid);
            var weapon_list = scr_ds_list_read(myfileid);
            ds_list_destroy(weapon_list);
            ossafe_file_text_readln(myfileid);
            var armor_list = scr_ds_list_read(myfileid);
            ds_list_destroy(armor_list);
            ossafe_file_text_readln(myfileid);
            var pocket_list = scr_ds_list_read(myfileid);
            ds_list_destroy(pocket_list);
            ossafe_file_text_readln(myfileid);
        }
        else
        {
            for (var j = 0; j < #GetMaxWeapon(); j += 1)
            {
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
            }
            
            for (var j = 0; j < #GetMaxArmor(); j += 1)
            {
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
            }
            
            for (var j = 0; j < #GetMaxStorage(); j += 1)
            {
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
            }
        }
        
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        
        if (global.is_console)
        {
            var litem_list = scr_ds_list_read(myfileid);
            ds_list_destroy(litem_list);
            ossafe_file_text_readln(myfileid);
            var phone_list = scr_ds_list_read(myfileid);
            ds_list_destroy(phone_list);
            ossafe_file_text_readln(myfileid);
            var flag_list = scr_ds_list_read(myfileid);
            flag_value = ds_list_find_value(flag_list, arg2);
            
            for (var i = 0; i < (arg2 + 1); i += 1)
            {
                if (i == arg2)
                    flag_value = ds_list_find_value(flag_list, i);
            }
            
            ds_list_destroy(flag_list);
            ossafe_file_text_readln(myfileid);
        }
        else
        {
            for (var i = 0; i < 8; i += 1)
            {
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
                file_text_read_real(myfileid);
                file_text_readln(myfileid);
            }
            
            for (var i = 0; i < (arg2 + 1); i += 1)
            {
                if (i == arg2)
                {
                    flag_value = file_text_read_real(myfileid);
                    file_text_readln(myfileid);
                }
                else
                {
                    file_text_read_real(myfileid);
                    file_text_readln(myfileid);
                }
            }
        }
        
        ossafe_file_text_close(myfileid);
    }
    
    return flag_value;
}

function scr_get_video_ini_value()
{
    var _ini_file = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    var _ini_value = ini_read_real("video_ch5", "watched", 0);
    ossafe_ini_close();
    return _ini_value;
}

function scr_set_video_ini_value(arg0)
{
    var iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    ini_write_real("video_ch5", "watched", arg0);
    ossafe_ini_close();
    ossafe_savedata_save();
}

function scr_set_sideb_ini_value(arg0)
{
    var iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    ini_write_real("side_b", "complete", arg0);
    ossafe_ini_close();
    ossafe_savedata_save();
}

function scr_complete_save_file_b()
{
    _remfilechoice = global.filechoice;
    global.filechoice += 3;
    scr_set_sideb_ini_value(true);
    global.end_game_pending = true;
    global.filechoice_route = "_b";
    scr_save();
    global.filechoice = _remfilechoice;
    global.filechoice_route = "";
}

function scr_store_flower_items()
{
    var flower_list = ["seth", "blue", "aqua", "yellow", "orange", "green", "flowery"];
    var iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
    var list_size = array_length(flower_list);
    var section_name = "F_ITEMS";
    
    for (var i = 0; i < list_size; i++)
    {
        var item_index = i;
        var prop_name = string(global.chapter) + "_" + string(global.filechoice) + "_" + string(item_index);
        var past_purchase = ini_read_real(section_name, prop_name, 0);
        
        if (past_purchase == 1)
            continue;
        
        var new_purchase = scr_flag_get_ext(1860, i);
        ini_write_real(section_name, prop_name, new_purchase);
    }
    
    ossafe_ini_close();
}
#endif