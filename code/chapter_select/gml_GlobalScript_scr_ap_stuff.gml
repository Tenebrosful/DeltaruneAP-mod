/// IMPORT
function scr_ap_stuff()
{
}

function scr_victory(arg0)
{
    noroom = 0;
    file = file_text_open_append("ch0.victory");
    file_text_close(file);
}

function scr_checkspot(arg0)
{
    noroom = 0;
    file = file_text_open_append("check.spot");
    file_text_write_string(file, string(arg0));
    file_text_writeln(file);
    file_text_close(file);
}

function scr_ap_get_check_completion()
{
}

function scr_findallfiles()
{
    var _list = ds_list_create();
    var _finished = 0;
    var _firstFile = file_find_first("*.item", 0);
    
    if (string_length(_firstFile) == 0)
        return _list;
    
    var found = 0;
    
    for (var i = 0; i < array_length_1d(global.gotcheck); i++)
    {
        if (global.gotcheck[i] == _firstFile)
        {
            found = 1;
            i = array_length_1d(global.gotcheck) - 1;
        }
    }
    
    if (file_exists(_firstFile) && found == 0)
        ds_list_add(_list, _firstFile);
    
    while (!_finished)
    {
        var _file = file_find_next();
        
        if (string_length(_file) == 0)
        {
            _finished = 1;
            break;
        }
        else
        {
            var _fullPath = _file;
            found = 0;
            
            for (var i = 0; i < array_length_1d(global.gotcheck); i++)
            {
                if (global.gotcheck[i] == _fullPath)
                {
                    found = 1;
                    i = array_length_1d(global.gotcheck) - 1;
                }
            }
            
            if (file_exists(_fullPath) && found == 0)
                ds_list_add(_list, _fullPath);
            
            continue;
        }
    }
    
    file_find_close();
    return _list;
}

function scr_ap_create()
{
    global.gotcheck = undefined;
    
    for (var i = 0; i < 9999; i++)
        global.gotcheck[i] = "-1";
    
    global.chapter = undefined;
    global.secret = 0;
    
    for (var i = 0; i < 7; i++)
        global.chapter[i] = 0;
    
    canshowtext = 1;
    showingitem = 0;
    index = 0;
    dslst = ds_list_create();
    dslst = scr_findallfiles();
    
    if (file_exists("all.route") == 1)
    {
        global.chapter = undefined;
        
        for (var i = 0; i < 7; i++)
        {
            if (file_exists("ch" + string(i + 1) + ".route"))
                global.chapter[i] = 1;
            else
                global.chapter[i] = 0;
        }
    }
}

function scr_ap_get_macguffin_amount()
{
    file = file_text_open_read("macguffin_amount.flag");
    var to_return = file_text_read_real(file);
    file_text_close(file);
    return to_return;
}

function scr_ap_step()
{
    if (ds_list_size(dslst) <= 0)
        dslst = scr_findallfiles();
    
    repeat (ds_list_size(dslst))
    {
        if (ds_list_size(dslst) > 0)
        {
            var dslistitems = ds_list_create();
            ds_list_copy(dslistitems, dslst);
            
            if (file_exists(ds_list_find_value(dslistitems, index)))
            {
                fl = file_text_open_read(ds_list_find_value(dslistitems, index));
                
                if (fl != "")
                {
                    noroom = 1;
                    trueitm = real(string_digits(file_text_read_string(fl)));
                    var itm = trueitm;
                    
                    if (trueitm >= 90000)
                        noroom = 0;
                    
                    if (trueitm == 66666)
                        global.secret = 1;
                    
                    if (file_exists("all.route") == 1)
                    {
                        global.chapter = undefined;
                        
                        for (var i = 0; i < 7; i++)
                        {
                            if (file_exists("ch" + string(i + 1) + ".route"))
                                global.chapter[i] = 1;
                            else
                                global.chapter[i] = 0;
                        }
                    }
                    else
                    {
                        if (trueitm == 90000)
                            global.chapter[0] = 1;
                        
                        if (trueitm == 90001)
                            global.chapter[1] = 1;
                        
                        if (trueitm == 90002)
                            global.chapter[2] = 1;
                        
                        if (trueitm == 90003)
                            global.chapter[3] = 1;
                    }
                    
                    file_text_close(fl);
                    
                    if (noroom == 0)
                    {
                        for (var i = 0; i < array_length_1d(global.gotcheck); i++)
                        {
                            if (global.gotcheck[i] == "-1")
                            {
                                global.gotcheck[i] = ds_list_find_value(dslistitems, index);
                                i = array_length_1d(global.gotcheck) + 999;
                            }
                        }
                        
                        index += 1;
                    }
                    else
                    {
                        index += 1;
                    }
                }
                else
                {
                    index += 1;
                }
            }
            else
            {
                index += 1;
            }
            
            if (index >= ds_list_size(dslst))
                index = 0;
        }
    }
}

function scr_ap_load()
{
    for (i = 0; i < 99; i += 1)
    {
        global.unlocked_buttons[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        global.gotcheck[i] = ossafe_file_text_read_string(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        global.customflags[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    for (i = 0; i < 99; i += 1)
    {
        global.gotplot[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    global.MacGuffin_count = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
}

function scr_ap_save()
{
    for (i = 0; i < 99; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.unlocked_buttons[i]);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_string(myfileid, global.gotcheck[i]);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.customflags[i]);
    }
    
    for (i = 0; i < 99; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.gotplot[i]);
    }
    
    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.MacGuffin_count);
}

function scr_ap_game_start()
{
    global.unlocked_buttons = undefined;
    
    for (var i = 0; i < 99; i++)
        global.unlocked_buttons[i] = 0;
    
    global.customflags = undefined;
    
    for (var i = 0; i < 9999; i++)
        global.customflags[i] = 0;
    
    global.gotcheck = undefined;
    
    for (var i = 0; i < 9999; i++)
        global.gotcheck[i] = "-1";
    
    global.MacGuffin_count = 0;
    global.gotplot = undefined;
    
    for (var i = 0; i < 99; i += 1)
        global.gotplot[i] = 0;
}
