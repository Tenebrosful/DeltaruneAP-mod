/// PATCH

/// AFTER
    ossafe_file_text_write_real(myfileid, global.time);
/// CODE
    scr_ap_save();
/// END

/// REPLACE
    if (global.is_console)
    {
        scr_ds_list_write(global.item, 13);
        ossafe_file_text_writeln(myfileid);
        scr_ds_list_write(global.keyitem, 13);
        ossafe_file_text_writeln(myfileid);
#if CHAPTER_1
        scr_ds_list_write(global.weapon, 13);
#else
        scr_ds_list_write(global.weapon, 48);
#endif
        ossafe_file_text_writeln(myfileid);
#if CHAPTER_1
        scr_ds_list_write(global.armor, 13);
#else
        scr_ds_list_write(global.armor, 48);
#endif
        ossafe_file_text_writeln(myfileid);
#if CHAPTER_1
#else
        scr_ds_list_write(global.pocketitem, 72);
        ossafe_file_text_writeln(myfileid);
#endif
    }
    else
    {
#if CHAPTER_1
        for (j = 0; j < 13; j += 1)
        {
            file_text_write_real(myfileid, global.item[j]);
            file_text_writeln(myfileid);
            file_text_write_real(myfileid, global.keyitem[j]);
            file_text_writeln(myfileid);
            file_text_write_real(myfileid, global.weapon[j]);
            file_text_writeln(myfileid);
            file_text_write_real(myfileid, global.armor[j]);
            file_text_writeln(myfileid);
        }
#else
        for (j = 0; j < 13; j += 1)
        {
            ossafe_file_text_write_real(myfileid, global.item[j]);
            ossafe_file_text_writeln(myfileid);
            ossafe_file_text_write_real(myfileid, global.keyitem[j]);
            ossafe_file_text_writeln(myfileid);
        }
        
        for (j = 0; j < 48; j++)
        {
            ossafe_file_text_write_real(myfileid, global.weapon[j]);
            ossafe_file_text_writeln(myfileid);
            ossafe_file_text_write_real(myfileid, global.armor[j]);
            ossafe_file_text_writeln(myfileid);
        }
        
        for (j = 0; j < 72; j++)
        {
            ossafe_file_text_write_real(myfileid, global.pocketitem[j]);
            ossafe_file_text_writeln(myfileid);
        }
#endif
    }
/// CODE
    if (global.is_console)
    {
        scr_ds_list_write(global.item, 13);
        ossafe_file_text_writeln(myfileid);
        scr_ds_list_write(global.keyitem, 13);
        ossafe_file_text_writeln(myfileid);
        scr_ds_list_write(global.weapon, 48);
        ossafe_file_text_writeln(myfileid);
        scr_ds_list_write(global.armor, 60);
        ossafe_file_text_writeln(myfileid);
        scr_ds_list_write(global.pocketitem, 72);
        ossafe_file_text_writeln(myfileid);
    }
    else
    {
        for (j = 0; j < 13; j += 1)
        {
            ossafe_file_text_write_real(myfileid, global.item[j]);
            ossafe_file_text_writeln(myfileid);
            ossafe_file_text_write_real(myfileid, global.keyitem[j]);
            ossafe_file_text_writeln(myfileid);
        }
        
        for (j = 0; j < 48; j++)
        {
            ossafe_file_text_write_real(myfileid, global.weapon[j]);
            ossafe_file_text_writeln(myfileid);
        }

        for (j = 0; j < 60; j++)
        {
            ossafe_file_text_write_real(myfileid, global.armor[j]);
            ossafe_file_text_writeln(myfileid);
        }

        for (j = 0; j < 72; j++)
        {
            ossafe_file_text_write_real(myfileid, global.pocketitem[j]);
            ossafe_file_text_writeln(myfileid);
        }
    }
/// END