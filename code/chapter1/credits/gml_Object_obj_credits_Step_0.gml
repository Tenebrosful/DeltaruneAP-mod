/// IMPORT
timer += 1;

if (timer == 1)
{
    song0 = snd_init("dontforget.ogg");
    songname = mus_get_name(song0);
    
    if (songname == "dontforget.ogg")
        song1 = mus_play(song0);
    else
        song1 = mus_loop(song0);
}

switch (songname)
{
    case "dontforget.ogg":
        if (timer == 60)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_13_0"); // When the
        
        if (timer == 180)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0"); // And the shadows start to grow

        if (timer == 108)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_19_0"); // light is running low
        
        if (timer == 180)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_33_0"); // And the shadows start to grow

        if (timer == 278)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_54_0"); // And the places that you know

        if (timer == 366)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_70_0"); // Seem like fantasy

        if (timer >= 480 && timer <= 520)
            textalpha -= 0.025;
        
        if (timer == 526)
        {
            textalpha = 1;
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_89_0"); // There's a
        }

        if (timer == 573)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_108_0"); // Light inside your soul

        if (timer == 645)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_113_0"); // That's still shining in the cold

        if (timer == 735)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_131_0"); // With the truth

        if (timer == 798)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_147_0"); // The promise in our hearts

        if (timer >= 960 && timer <= 1030)
            textalpha -= 0.02;

        if (timer == 1033)
        {
            textalpha = 1;
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_174_0"); // Don't forget
        }

        if (timer == 1086)
            lyric = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_180_0"); // I'm with you in the dark

        if (timer >= 1300)
            textalpha -= 0.01;
        break;
    
    case "Flowerman_Arrangement.ogg":
        if (timer == 720)
            lyric = stringset("Ten feet twenty the Flower Man");
        
        if (timer == 821)
            lyric = stringset("Is waiting for the touch of his hand");

        if (timer == 923)
            lyric = stringset("Straightening petals out without a plan");

        if (timer == 1013)
            lyric = stringset("Like the every daily");

        if (timer == 1080)
            lyric = stringset("Wish that bothers the Flower Man");

        if (timer == 1181)
            lyric = stringset("Could I do something to make him laugh");

        if (timer == 1283)
            lyric = stringset("Inside my little chamber made of glass");

        if (timer == 1373)
            lyric = stringset("So he lived the");

        if (timer == 1418)
            lyric = stringset("Flower Man, Flower Man");

        if (timer == 1508)
            lyric = stringset("With his heart in the sand");

        if (timer == 1592)
            lyric = stringset("So he stands");

        if (timer == 1654)
            lyric = stringset("To watch the whole wide world");

        if (timer == 1660)
            textalpha = 0;
        break;
    
    case "ch3_karaoke_full.ogg":
    case "ch3_karaoke_no_guitar.ogg":
        if (timer == 478)
            lyric = stringset("WHEN THE DEMON HEART IS CRYING");
        
        if (timer == 548)
            lyric = stringset("AND THE BLOOD IS GUSHING BRIGHT");

        if (timer == 626)
            lyric = stringset("RAISE UP YOUR BAT FOR THE BURNING FIGHT");

        if (timer == 732)
            lyric = stringset("WHEN YOUR HOPE IS SLOWLY DYING");

        if (timer == 798)
            lyric = stringset("AND YOUR FUTURE'S LOST ITS RIGHTS");

        if (timer == 880)
            lyric = stringset("RAISE UP YOUR BAT AND FACE THE FRIGHT");

        if (timer == 1006)
            lyric = stringset("LET'S KNOCK EM DEAD INTO THE NIGHT");

        if (timer == 1130)
            textalpha = 0;
        break;
}

if (timer == 108)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_21_0"); // DELTARUNE
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_22_0"); // Chapter 1
    line[2] = " ";
    line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_24_0"); // by Toby Fox
}

if (timer == 201)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_38_0"); // Main Artist, Animator, & Cleanup
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_39_0"); // (BG, Overworld, Battle)
    line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_40_0"); // (Sepia and Menu Art, Borders)
    line[3] = " ";
    line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_42_0"); // Temmie Chang
    linecolor[0] = c_ltgray;
    linecolor[1] = c_ltgray;
    linecolor[2] = c_ltgray;
    linecolor[4] = c_white;
}

if (timer == 298)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_59_0"); // Lancer, Rudinn, Hathy
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_60_0"); // Clover, King, Jevil
    line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_61_0"); // Original Character Designs
    linecolor[2] = c_ltgray;
    line[3] = " ";
    line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_64_0"); // Kanotynes
}

if (timer == 390)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_95_0"); // Japanese Localization
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_96_0"); // 8-4, Ltd.
    line[2] = " ";
    line[3] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_98_0"); // Translator
    line[4] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_99_0"); // Keiko Fukuichi
    linecolor[0] = c_ltgray;
    linecolor[1] = c_white;
    linecolor[3] = c_ltgray;
    linecolor[4] = c_white;
}

if (timer >= 480 && timer <= 520)
    creditalpha -= 0.025;

if (timer == 573)
{
    creditalpha = 1;
    line[0] = "Localization Producers";
    line[1] = "John Ricciardi";
    line[2] = "Graeme Howard";
    linecolor[0] = c_ltgray;
    linecolor[1] = c_white;
    linecolor[2] = c_white;
    linecolor[3] = c_ltgray;
    linecolor[4] = c_white;
    line[3] = "Additional Programming";
    line[4] = "Gregg Tavares (PC)";
    line[5] = "Sarah O'Donnell (Console)";
    line[6] = "Fred Wood";
    line[7] = "Enjl";
    
    if (global.lang == "ja")
    {
        line[0] = "ローカライズプロデューサー";
        line[3] = "追加プログラミング";
        line[4] = "Gregg Tavares (PC版)";
        line[5] = "Sarah O'Donnell (コンシューマー版)";
        line[6] = "Fred Wood";
        line[7] = "Enjl";
    }
}

if (timer == 668)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_119_0"); // Don't Forget (Vocal Excerpt)
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_120_0"); // Piano Arranged & Vocals Performed by
    line[2] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_121_0"); // Laura Shigihara
    line[3] = "Snowdrake & Monster Kid Design";
    line[4] = "Magnolia Porter";
    line[5] = "";
    line[6] = "";
    line[7] = "";
    linecolor[0] = c_ltgray;
    linecolor[1] = c_ltgray;
    linecolor[2] = c_white;
    linecolor[3] = c_ltgray;
    linecolor[4] = c_white;
    
    if (global.lang == "ja")
        line[3] = "ライちゃん／モンスターの子　デザイン";
}

if (timer == 765)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0"); // Special Thanks
    line[1] = "Gigi DG (Outfit & Color Assist)";
    line[2] = "Betty Kwong (Temmie Design)";
    line[3] = "256graph (JP Graphics)";
    line[4] = "Ryan Alyea (Website)";
    line[5] = "Brian Coia (Website)";
    linecolor[0] = c_ltgray;
    linecolor[1] = c_white;
    linecolor[2] = c_white;
    linecolor[3] = c_white;
    linecolor[4] = c_white;
    linecolor[5] = c_white;
    
    if (global.lang == "ja")
    {
        line[1] = "Gigi DG (カラーアシタンス)";
        line[2] = "Betty Kwong (テミー・デザイン)";
        line[3] = "256graph (日本語グラフィック)";
        line[4] = "Ryan Alyea (ウェブサイト)";
        line[5] = "Brian Coia (ウェブサイト)";
    }
}

if (timer == 870)
{
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_152_0"); // Special Thanks
    line[1] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_153_0"); // Chess (Support)
    line[2] = "Fontworks Inc.";
    line[3] = "Yutaka Sato (Happy Ruika)";
    line[4] = "Hiroko Minamoto";
    line[5] = "All 8-4 & Fangamer Staff";
    linecolor[1] = c_white;
}

if (timer >= 960 && timer <= 1030)
    creditalpha -= 0.02;

if (timer >= 1300)
{
    if (timer <= 1560 && creditalpha < 1)
        creditalpha += 0.01;
    
    if (timer >= 1560 && creditalpha > 0)
        creditalpha -= 0.01;
    
    line[0] = scr_84_get_lang_string("obj_credits_slash_Step_0_gml_187_0"); // To be continued
    line[1] = " ";
    linecolor[0] = c_white;
    linecolor[1] = c_white;
    line[2] = " ";
    line[3] = " ";
    line[4] = " ";
    line[5] = " ";
}

if (timer == 1660)
    snd_free(song0);

if (timer == 1680)
    room_goto(room_chapter_continue);
