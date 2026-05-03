/// IMPORT
function scr_load_chapter2()
{
    snd_free_all();
    filechoicebk = global.filechoice;
    scr_gamestart();
    global.filechoice = filechoicebk;
    file = "filech2_" + string(global.filechoice);
    myfileid = ossafe_file_text_open_read(file);
    global.truename = ossafe_file_text_read_string(myfileid);
    ossafe_file_text_readln(myfileid);
    global.is_console = 0;
    for (var i = 0; i < 6; i += 1)
    {
        global.othername[i] = ossafe_file_text_read_string(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    global.char[0] = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.char[1] = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.char[2] = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.gold = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.xp = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lv = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.inv = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.invc = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.darkzone = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    
    for (var i = 0; i < 5; i += 1)
    {
        global.hp[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.maxhp[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.at[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.df[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.mag[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.guts[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.charweapon[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.chararmor1[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.chararmor2[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.weaponstyle[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        
        for (q = 0; q < 4; q += 1)
        {
            global.itemat[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemdf[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemmag[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itembolts[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemgrazeamt[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemgrazesize[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemboltspeed[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemspecial[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemelement[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
            global.itemelementamount[i][q] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
        }
        
        for (j = 0; j < 12; j += 1)
        {
            global.spell[i][j] = ossafe_file_text_read_real(myfileid);
            ossafe_file_text_readln(myfileid);
        }
    }
    
    global.boltspeed = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.grazeamt = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.grazesize = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    
    for (j = 0; j < 13; j += 1)
    {
        global.item[j] = file_text_read_real(myfileid);
        file_text_readln(myfileid);
        global.keyitem[j] = file_text_read_real(myfileid);
        file_text_readln(myfileid);
    }

    for (j = 0; j < 48; j += 1)
    {
        global.weapon[j] = file_text_read_real(myfileid);
        file_text_readln(myfileid);
    }

    for (j = 0; j < 60; j += 1)
    {
        global.armor[j] = file_text_read_real(myfileid);
        file_text_readln(myfileid);
    }
    
    for (j = 0; j < 72; j += 1)
    {
        global.pocketitem[j] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    global.tension = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.maxtension = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lweapon = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.larmor = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lxp = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.llv = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lgold = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lhp = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lmaxhp = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lat = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.ldf = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.lwstrength = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.ladef = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    
    for (var i = 0; i < 8; i += 1)
    {
        global.litem[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
        global.phone[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    for (var i = 0; i < 2500; i += 1)
    {
        global.flag[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    global.plot = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.currentroom = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    global.time = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    AP_load();
    
    ossafe_file_text_close(myfileid);
    global.lastsavedtime = global.time;
    global.lastsavedlv = global.lv;
    scr_gamestart_chapter_override();
    global.darkzone = 1;
    scr_tempsave();
    audio_group_set_gain(1, global.flag[15], 0);
    audio_set_master_gain(0, global.flag[17]);
}
