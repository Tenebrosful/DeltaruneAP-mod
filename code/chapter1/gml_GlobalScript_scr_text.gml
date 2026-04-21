/// IMPORT
function scr_text(arg0)
{
    switch (arg0)
    {
        case 0:
            break;
        
        case 10:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_8_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_9_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_12_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_13_0_b");
            global.msg[0] = stringsetloc("* You really didn't want to throw it away./", "scr_text_slash_scr_text_gml_12_0");
            global.msg[1] = stringsetloc("* Throw it away anyway?/", "scr_text_slash_scr_text_gml_13_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_14_0");
            
            if (global.chapter >= 2)
                msgsetloc(0, "* You took it from your pocket^1.&* You have a \\cYvery^1, very^1, bad feeling\\c0 about throwing it away./", "scr_text_slash_scr_text_gml_19_0");
            
            break;
        
        case 11:
            if (global.choice == 0)
            {
                global.flag[466] = 1;
                snd_play(snd_bageldefeat);
                global.msg[0] = stringsetloc("* Hand shaking^1, you dropped the ball of junk on the ground./", "scr_text_slash_scr_text_gml_20_0");
                global.msg[1] = stringsetloc("* It broke into pieces./", "scr_text_slash_scr_text_gml_21_0");
                global.msg[2] = stringsetloc("* You felt bitter./%", "scr_text_slash_scr_text_gml_22_0");
                script_execute(scr_litemshift, global.menucoord[1], 0);
                
                for (var i = 0; i < 12; i += 1)
                    global.item[i] = 0;
                
                for (var i = 0; i < 48; i += 1)
                {
                    global.armor[i] = 0;
                    global.weapon[i] = 0;
                }
            }
            else
            {
                global.msg[0] = stringsetloc("* You felt a feeling of relief./%", "scr_text_slash_scr_text_gml_34_0");
            }
            
            break;
        
        case 100:
            global.msg[0] = stringsetloc("* Hey, Kris^1! What's up^1?&* Didja lose your pencil again?/", "scr_text_slash_scr_text_gml_39_0");
            global.msg[1] = stringsetloc("\\E4* Here^1, you want the candy-cane one or the one with lights on it?/", "scr_text_slash_scr_text_gml_40_0");
            global.msg[2] = stringsetloc("\\E1* Huh^1?&* You want to be partners?/", "scr_text_slash_scr_text_gml_41_0");
            global.msg[3] = stringsetloc("\\E4* Ummm..^1. Sorry..^1.&* Berdly already asked me.../", "scr_text_slash_scr_text_gml_42_0");
            global.msg[4] = stringsetloc("\\E0* But I could ask Ms. Alphys if we could make a group of 3!/", "scr_text_slash_scr_text_gml_43_0");
            global.msg[5] = stringsetloc("\\E4* I'll ask if you're sure!& &Not yet     Yes. Ask.\\C1 ", "scr_text_slash_scr_text_gml_44_0");
            global.msg[6] = stringsetloc(" ", "scr_text_slash_scr_text_gml_47_0");
            break;
        
        case 101:
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E0* OK^1, I'll ask!/", "scr_text_slash_scr_text_gml_51_0");
                global.msg[1] = stringsetloc("* Miss Alphys^1!&* Umm^1, is it OK if we have a group of 3?/%", "scr_text_slash_scr_text_gml_52_0");
                
                with (obj_classscene)
                    con = 20;
            }
            
            if (global.choice == 0)
                global.msg[0] = stringsetloc("\\E4* Yeah^1, I'm sure there's someone else you can ask!/%", "scr_text_slash_scr_text_gml_57_0");
            
            break;
        
        case 102:
            global.msg[0] = stringsetloc("\\E0* Do you wanna be partners?&Not yet     Yes\\C1 ", "scr_text_slash_scr_text_gml_62_0");
            global.msg[1] = stringsetloc(" ", "scr_text_slash_scr_text_gml_65_0");
            break;
        
        case 103:
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E0* OK^1, I'll ask!/", "scr_text_slash_scr_text_gml_69_0");
                global.msg[1] = stringsetloc("* Miss Alphys^1!&* Umm^1, is it OK if we have a group of 3?/%", "scr_text_slash_scr_text_gml_70_0");
                
                with (obj_classscene)
                    con = 20;
            }
            
            if (global.choice == 0)
                global.msg[0] = stringsetloc("\\E4* Umm^1, OK^1.&* You just keep doing your thing^1, Kris./%", "scr_text_slash_scr_text_gml_75_0");
            
            break;
        
        case 104:
            global.msg[0] = stringsetloc("\\E0* Alright^1.&* Let's get this over with./", "scr_text_slash_scr_text_gml_80_0");
            global.msg[1] = stringsetloc("* We'll get more chalk^1.&* Mosey back to class^1.&* And then^1, Kris.../", "scr_text_slash_scr_text_gml_81_0");
            global.msg[2] = stringsetloc("\\E2* YOU'LL do our project./", "scr_text_slash_scr_text_gml_82_0");
            global.msg[3] = stringsetloc("* How's that sound?& &Good        Bad\\C1 ", "scr_text_slash_scr_text_gml_83_0");
            global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_86_0");
            break;
        
        case 105:
            global.msg[0] = stringsetloc(" %%", "scr_text_slash_scr_text_gml_90_0");
            break;
        
        case 110:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_92_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_93_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_96_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_97_0");
            
            if (global.flag[100] == 0)
            {
                global.msg[0] = stringsetloc("* (There's something glowing inside.)/", "scr_text_slash_scr_text_gml_98_0");
                global.msg[1] = stringsetloc("* (Take it?)/ ", "scr_text_slash_scr_text_gml_99_0");
                global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_100_0");
            }
            else
            {
                global.msg[0] = stringsetloc("* (It's dark inside.)/%", "scr_text_slash_scr_text_gml_104_0");
            }
            
            break;
        
        case 111:
            if (global.choice == 0)
            {
                global.msg[0] = string("* You got {0}./%", scr_ap_get_location_reward_text(1));
                global.flag[100] = 1;
                scr_checkspot(1);
                
                with (obj_readable_room1)
                {
                    if ((x == 240 && y == 180) || (x == 300 && y == 240))
                    {
                        with (shine)
                            instance_destroy();
                    }
                }
            }
            else
            {
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_118_0");
            }
            
            break;
        
        case 120:
            global.choicemsg[0] = stringsetloc("#Listen", "scr_text_slash_scr_text_gml_125_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_126_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_129_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_130_0_b");
            global.msg[0] = stringsetloc("* Welcome^1.&* I am the \\cYPrince\\cW of this \\cYKingdom\\cW.../", "scr_text_slash_scr_text_gml_129_0");
            global.msg[1] = stringsetloc("* The \\cYKINGDOM OF DARKNESS\\cW./", "scr_text_slash_scr_text_gml_130_0");
            global.msg[2] = stringsetloc("* Kris^1, Susie..^1.&* There is a \\cYLEGEND\\cW in this land./", "scr_text_slash_scr_text_gml_131_0");
            global.msg[3] = stringsetloc("* A LEGEND that one day^1, two \\cYHEROES of LIGHT\\cW will arrive,/", "scr_text_slash_scr_text_gml_132_0");
            global.msg[4] = stringsetloc("* And fulfill the ancient prophecy^1, foretold by time and space./", "scr_text_slash_scr_text_gml_133_0");
            global.msg[5] = stringsetloc("* Please^1, Heroes..^1.&* Listen to my tale.../", "scr_text_slash_scr_text_gml_134_0");
            global.msg[6] = stringsetloc(" \\C2 ", "scr_text_slash_scr_text_gml_135_0");
            global.msg[7] = stringsetloc(" ", "scr_text_slash_scr_text_gml_138_0");
            break;
        
        case 121:
            global.choicemsg[0] = stringsetloc("#Listen", "scr_text_slash_scr_text_gml_140_0");
            global.choicemsg[1] = stringsetloc("#We know it#Already", "scr_text_slash_scr_text_gml_141_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_144_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_145_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* Very well then.../%", "scr_text_slash_scr_text_gml_146_0");
            }
            else
            {
                global.msg[0] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_150_0");
                global.msg[1] = stringsetloc("\\E1* Umm, r-really^1?&* Are you sure^1?&* It's fairly important./", "scr_text_slash_scr_text_gml_151_0");
                global.msg[2] = stringsetloc("* And... um^1, in my opinion^1, it's a really nice \\cYPROPHECY\\cW!/", "scr_text_slash_scr_text_gml_152_0");
                global.msg[3] = stringsetloc("* I think you'd quite like it!/", "scr_text_slash_scr_text_gml_153_0");
                global.msg[4] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_154_0");
                global.msg[5] = stringsetloc(" ", "scr_text_slash_scr_text_gml_157_0");
            }
            
            break;
        
        case 122:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E0* Phew^1!&* Um^1, very well then.../%", "scr_text_slash_scr_text_gml_163_0");
            }
            else
            {
                global.flag[203] = 1;
                
                with (obj_darkcastle_event)
                    con = 30;
                
                global.msg[0] = stringsetloc("* ... really^1?&* You've heard it already?/", "scr_text_slash_scr_text_gml_169_0");
                global.msg[1] = stringsetloc("* Oh..^1. Perhaps I shouldn't have rehearsed it so much.../", "scr_text_slash_scr_text_gml_170_0");
                scr_susface(2, 0);
                global.msg[3] = stringsetloc("* Look^1, dude^1, we didn't come here for a bedtime story./", "scr_text_slash_scr_text_gml_172_0");
                global.msg[4] = stringsetloc("* Just tell us how to get home./", "scr_text_slash_scr_text_gml_173_0");
                scr_ralface(5, 0);
                global.msg[6] = stringsetloc("* Ummm^1, the easiest way would be to seal the \\cYEastern FOUNTAIN\\cW./", "scr_text_slash_scr_text_gml_175_0");
                scr_susface(7, 0);
                global.msg[8] = stringsetloc("* Fountain?/", "scr_text_slash_scr_text_gml_177_0");
                global.msg[9] = stringsetloc("\\E1* You mean^1, uh^1, like the water bubbler or something?/", "scr_text_slash_scr_text_gml_178_0");
                scr_ralface(10, 0);
                global.msg[11] = stringsetloc("* THE fountain^1.&* That which gives the \\cYDARK WORLD\\cW form./", "scr_text_slash_scr_text_gml_180_0");
                global.msg[12] = stringsetloc("\\E1* ... umm^1, are you sure you actually know the legend?/", "scr_text_slash_scr_text_gml_181_0");
                scr_susface(13, 1);
                global.msg[14] = stringsetloc("* Look./", "scr_text_slash_scr_text_gml_183_0");
                global.msg[15] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_184_0");
                global.msg[16] = stringsetloc("* No./", "scr_text_slash_scr_text_gml_185_0");
                global.msg[17] = stringsetloc("* But I think I've got enough info./", "scr_text_slash_scr_text_gml_186_0");
                global.msg[18] = stringsetloc("* See you two later./", "scr_text_slash_scr_text_gml_187_0");
                scr_ralface(19, 1);
                global.msg[20] = stringsetloc("* W-wait^1!&* Let me at least tell you how to.../%", "scr_text_slash_scr_text_gml_189_0");
            }
            
            break;
        
        case 125:
            global.choicemsg[0] = stringsetloc("I'll be#Your#Subject", "scr_text_slash_scr_text_gml_196_0");
            global.choicemsg[1] = stringsetloc("Keep#Dreaming", "scr_text_slash_scr_text_gml_197_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_198_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_199_0");
            global.msg[0] = stringsetloc("* This is the CASTLE TOWN^2, where my subjects reside.../", "scr_text_slash_scr_text_gml_200_0");
            global.msg[1] = stringsetloc("\\E1* Err, well, they would if I had any.../", "scr_text_slash_scr_text_gml_201_0");
            global.msg[2] = stringsetloc("\\E8* Oh, don't worry about me, Kris!/", "scr_text_slash_scr_text_gml_202_0_b");
            global.msg[3] = stringsetloc("\\E0* I'm certain I'll find a subject someday.../", "scr_text_slash_scr_text_gml_203_0");
            global.msg[4] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_202_0");
            global.msg[5] = stringsetloc(" ", "scr_text_slash_scr_text_gml_205_0");
            break;
        
        case 126:
            if (global.choice == 0)
            {
                global.fe = 7;
                global.flag[204] = 1;
                global.msg[0] = stringsetloc("\\E3* H..^1. Huh!?/", "scr_text_slash_scr_text_gml_213_0");
                global.msg[1] = stringsetloc("\\E7* Why^1, Kris^1, you don't have to do that.../", "scr_text_slash_scr_text_gml_214_0");
                global.msg[2] = stringsetloc("\\E1* ... but^1, if you insist.../", "scr_text_slash_scr_text_gml_215_0");
                global.msg[3] = stringsetloc("\\E0* Kris, as your Prince and authority, I order you to...!/", "scr_text_slash_scr_text_gml_216_0");
                global.msg[4] = stringsetloc("\\E8* Please let me know what to do!/%", "scr_text_slash_scr_text_gml_217_0");
            }
            else
            {
                global.flag[204] = 2;
                global.fe = 8;
                global.msg[0] = stringsetloc("* Oh^1, thank you^1, Kris^2!&* I will!/%", "scr_text_slash_scr_text_gml_224_0");
            }
            
            break;
        
        case 130:
            global.choicemsg[0] = stringsetloc("#I know", "scr_text_slash_scr_text_gml_227_0");
            global.choicemsg[1] = stringsetloc("#Really!?", "scr_text_slash_scr_text_gml_228_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_231_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_232_0_b");
            input_name = scr_get_input_name(5);
            global.msg[0] = stringsetsubloc("* Er^1, Kris^1, you know you can hold [~1] to run...?/", input_name, "scr_text_slash_scr_text_gml_232_0");
            global.msg[1] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_233_0");
            global.msg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_236_0");
            break;
        
        case 131:
            if (global.choice == 0)
            {
                global.fe = 3;
                global.msg[0] = stringsetloc("* Really^1?&* And yet you choose not to...?/", "scr_text_slash_scr_text_gml_242_0");
                global.msg[1] = stringsetloc("\\E6* Right^1, who knows how long these leisurely days will last.../", "scr_text_slash_scr_text_gml_243_0");
                global.msg[2] = stringsetloc("\\E0* There's nothing wrong with taking your time^1, Kris./%", "scr_text_slash_scr_text_gml_244_0");
            }
            else
            {
                global.fe = 0;
                input_name = scr_get_input_name(5);
                global.msg[0] = stringsetsubloc("* Right^1!&* You'll move faster by holding [~1]!/", input_name, "scr_text_slash_scr_text_gml_250_0");
                global.msg[1] = stringsetloc("\\E8* And I'll be right behind you^1, so don't worry!/", "scr_text_slash_scr_text_gml_251_0");
                global.msg[2] = stringsetloc("\\E6* ... Unless you want to get away^1, in which case^1, sorry./%", "scr_text_slash_scr_text_gml_252_0");
            }
            
            break;
        
        case 132:
            global.choicemsg[0] = stringsetloc("#I know", "scr_text_slash_scr_text_gml_258_0");
            global.choicemsg[1] = stringsetloc("#Really!?", "scr_text_slash_scr_text_gml_259_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_262_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_263_0");
            global.msg[0] = stringsetloc("* Umm^1, Kris^1, did you know.../", "scr_text_slash_scr_text_gml_262_0");
            global.msg[1] = stringsetsubloc("* ... You can skip text by pressing [~1]?/", scr_get_input_name(5), "scr_text_slash_scr_text_gml_265_0");
            global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_264_0");
            global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_267_0");
            break;
        
        case 133:
            if (global.choice == 0)
            {
                global.fe = 3;
                global.msg[0] = stringsetloc("* ... Really^1?&* So you've just been.../", "scr_text_slash_scr_text_gml_273_0");
                global.msg[1] = stringsetloc("\\E2* Listening to me talk^1, because you wanted to?/", "scr_text_slash_scr_text_gml_274_0");
                global.msg[2] = stringsetloc("\\E6* I'll try to make it worth your while^1, Kris!/%", "scr_text_slash_scr_text_gml_275_0");
            }
            else
            {
                global.fe = 0;
                global.msg[0] = stringsetloc("* Right^1! In the case you read very quickly./", "scr_text_slash_scr_text_gml_280_0");
                global.msg[1] = stringsetloc("\\E1* Or you're tired of what's being said./", "scr_text_slash_scr_text_gml_281_0");
                global.msg[2] = stringsetloc("\\E6* ... No need to skip my text^1, right^1, Kris?/%", "scr_text_slash_scr_text_gml_282_0");
            }
            
            break;
        
        case 135:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_289_0");
            global.choicemsg[1] = stringsetloc("#Don't", "scr_text_slash_scr_text_gml_290_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_293_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_294_0_b");
            global.msg[0] = stringsetloc("\\E3* Oh^1, Kris^1!&* It's the training dummy I made!/", "scr_text_slash_scr_text_gml_293_0");
            global.msg[1] = stringsetloc("\\E8* Now seems like a great chance to prepare for the enemy./", "scr_text_slash_scr_text_gml_294_0");
            global.msg[2] = stringsetloc("\\E0* Would you like me to teach you how to fight?/", "scr_text_slash_scr_text_gml_295_0");
            global.msg[3] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_296_0");
            global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_299_0");
            break;
        
        case 136:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E0* OK^1!&* Get ready, Kris!/%", "scr_text_slash_scr_text_gml_303_0");
                
                with (obj_tutorialbattleevent)
                    con = 20;
            }
            else
            {
                global.msg[0] = stringsetloc("\\E3* Right^1, you already fought Lancer^1, didn't you...?/", "scr_text_slash_scr_text_gml_308_0");
                global.msg[1] = stringsetloc("\\E1* I was so excited to teach you^1, I absolutely blanked!/", "scr_text_slash_scr_text_gml_309_0");
                global.msg[2] = stringsetloc("\\E2* ... B-but^1, um..^1.&* Just in case you forgot anything.../", "scr_text_slash_scr_text_gml_310_0");
                global.msg[3] = stringsetloc("\\E6* Here^1!&* I made a Manual for you and Susie!/", "scr_text_slash_scr_text_gml_311_0");
                global.msg[4] = stringsetsubloc("\\E0* Press [~1] to open the menu and use it in your ITEMS./", scr_get_input_name(6), "scr_text_slash_scr_text_gml_314_0_b");
                scr_noface(5);
                global.msg[6] = string("* (The Manual turned into {0}.)/%", scr_ap_get_location_reward_text(12));
            }
            
            break;
        
        case 140:
            global.choicemsg[0] = stringsetloc("#I can#handle it", "scr_text_slash_scr_text_gml_319_0");
            global.choicemsg[1] = stringsetloc("#.....#", "scr_text_slash_scr_text_gml_320_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_323_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_324_0_b");
            global.msg[0] = stringsetloc("\\E3* Oh my^2!&* The Great Door is opened?!/", "scr_text_slash_scr_text_gml_323_0");
            global.msg[1] = stringsetloc("* No wonder Lancer was able to come through.../", "scr_text_slash_scr_text_gml_324_0");
            global.msg[2] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_325_0");
            global.msg[3] = stringsetloc("* Kris, once we pass through this door.../", "scr_text_slash_scr_text_gml_326_0");
            global.msg[4] = stringsetloc("* Our adventure will really begin./", "scr_text_slash_scr_text_gml_327_0");
            global.msg[5] = stringsetloc("* A journey foretold exactly by the prophecy.../", "scr_text_slash_scr_text_gml_328_0");
            global.msg[6] = stringsetloc("\\E6* But^1, Kris^1, I believe YOUR choices are important^1, too./", "scr_text_slash_scr_text_gml_329_0");
            global.msg[7] = stringsetloc("\\E0* This world is full of all kinds of people^1, Kris./", "scr_text_slash_scr_text_gml_330_0");
            global.msg[8] = stringsetloc("\\E6* In the end^1, how we treat them makes all the difference./", "scr_text_slash_scr_text_gml_331_0");
            global.msg[9] = stringsetloc("\\E8* So let's try our best to get by without FIGHTing./", "scr_text_slash_scr_text_gml_332_0");
            global.msg[10] = stringsetloc("\\E1* If we can manage to do that.../", "scr_text_slash_scr_text_gml_333_0");
            global.msg[11] = stringsetloc("\\E0* I believe this tale may have a happy ending./", "scr_text_slash_scr_text_gml_334_0");
            global.msg[12] = stringsetloc("\\E6* Otherwise^1, I fear that.../", "scr_text_slash_scr_text_gml_335_0");
            global.msg[13] = stringsetloc("\\E1* ... you may not..^1. find the result favorable./", "scr_text_slash_scr_text_gml_336_0");
            global.msg[14] = stringsetloc("\\E3* ... Oh^1, I'm sorry^1! Is that too much to ask?/", "scr_text_slash_scr_text_gml_337_0");
            global.msg[15] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_338_0");
            global.msg[16] = stringsetloc(" ", "scr_text_slash_scr_text_gml_341_0");
            break;
        
        case 141:
            global.msg[0] = stringsetloc("\\E0* Kris^1, I knew you were a hero the moment I saw you./", "scr_text_slash_scr_text_gml_343_0");
            global.msg[1] = stringsetloc("\\E8* Let's try our best^1, alright?/%", "scr_text_slash_scr_text_gml_344_0");
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E3* O-oh^1, I'm sorry!/", "scr_text_slash_scr_text_gml_348_0");
                global.msg[1] = stringsetloc("\\E6* Kris^1, in the end^1, what you choose is up to you./", "scr_text_slash_scr_text_gml_349_0");
                global.msg[2] = stringsetloc("\\E8* As long as you're happy with it^1, I'm happy too./", "scr_text_slash_scr_text_gml_350_0");
                global.msg[3] = stringsetloc("\\E0* So just try your best^1, and don't worry!/%", "scr_text_slash_scr_text_gml_351_0");
            }
            
            break;
        
        case 145:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_358_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_359_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_362_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_363_0");
            
            if (global.flag[101] == 0)
            {
                global.msg[0] = stringsetloc("* (There are two objects hanging from the tree.)/", "scr_text_slash_scr_text_gml_364_0");
                global.msg[1] = stringsetloc("* (Take one?)/ ", "scr_text_slash_scr_text_gml_365_0");
                global.msg[2] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_366_0");
            }
            
            if (global.flag[101] == 1)
            {
                global.msg[0] = stringsetloc("* (There's a candy hanging from the tree.)/", "scr_text_slash_scr_text_gml_370_0");
                global.msg[1] = stringsetloc("* (Take one?)/ ", "scr_text_slash_scr_text_gml_371_0");
                global.msg[2] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_372_0");
            }
            
            if (global.flag[101] >= 2)
                global.msg[0] = stringsetloc("* (There's nothing hanging low enough to take.)/%", "scr_text_slash_scr_text_gml_377_0");
            
            break;
        
        case 146:
            if (global.choice == 0)
            {
                scr_checkspot(2 + global.flag[101]);
                
                if (noroom == 0)
                {
                    global.msg[0] = string("* (You got {0}.)/%", scr_ap_get_location_reward_text(2 + global.flag[101]));
                    global.flag[101] += 1;
                }
                else
                {
                    global.msg[0] = stringsetloc("* (You can't carry any more.)/%", "scr_text_slash_scr_text_gml_393_0");
                }
            }
            else
            {
                global.msg[0] = stringsetloc("* (You decided to let the tree keep it.)/%", "scr_text_slash_scr_text_gml_399_0");
            }
            
            break;
        
        case 147:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_404_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_405_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_408_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_409_0");
            
            if (global.flag[102] == 0)
            {
                global.msg[0] = stringsetloc("* (There are two objects hanging from the tree.)/", "scr_text_slash_scr_text_gml_410_0");
                global.msg[1] = stringsetloc("* (Take one?)/", "scr_text_slash_scr_text_gml_411_0");
                global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_412_0");
            }
            
            if (global.flag[102] == 1)
            {
                global.msg[0] = stringsetloc("* (There's a candy hanging from the tree.)/", "scr_text_slash_scr_text_gml_416_0");
                global.msg[1] = stringsetloc("* (Take one?)/ ", "scr_text_slash_scr_text_gml_417_0");
                global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_418_0");
            }
            
            if (global.flag[102] >= 2)
                global.msg[0] = stringsetloc("* (There's nothing hanging low enough to take.)/%", "scr_text_slash_scr_text_gml_423_0");
            
            break;
        
        case 148:
            if (global.choice == 0)
            {
                scr_checkspot(4 + global.flag[102]);
                
                if (noroom == 0)
                {
                    global.msg[0] = string("* (You got {0}.)/%", scr_ap_get_location_reward_text(4 + global.flag[102]));
                    global.flag[102] += 1;
                }
                else
                {
                    global.msg[0] = stringsetloc("* (You can't carry any more.)/%", "scr_text_slash_scr_text_gml_439_0");
                }
            }
            else
            {
                global.msg[0] = stringsetloc("* (You decided to let the tree keep it.)/%", "scr_text_slash_scr_text_gml_445_0");
            }
            
            break;
        
        case 149:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_450_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_451_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_454_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_455_0");
            
            if (global.flag[103] == 0)
            {
                global.msg[0] = stringsetloc("* (The remains of the cake are still smoldering...)/", "scr_text_slash_scr_text_gml_456_0");
                global.msg[1] = stringsetloc("* (Take a piece?)/", "scr_text_slash_scr_text_gml_457_0");
                global.msg[2] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_458_0");
            }
            else
            {
                global.msg[0] = stringsetloc("* (The remains of the cake are still smoldering...)/%", "scr_text_slash_scr_text_gml_462_0");
            }
            
            break;
        
        case 150:
            if (global.choice == 0)
            {
                scr_checkspot(23);
                
                if (noroom == 0)
                {
                    global.msg[0] = string("* (The Broken Cake turned into {0}.)/%", scr_ap_get_location_reward_text(23));
                }
                else
                {
                    global.msg[0] = stringsetloc("* (You can't carry any more.)/%", "scr_text_slash_scr_text_gml_478_0");
                }
            }
            else
            {
                global.msg[0] = stringsetloc("* (You decided putting cake in your pockets is a bad idea.)/%", "scr_text_slash_scr_text_gml_484_0");
            }
            
            break;
        
        case 175:
            global.choicemsg[0] = stringsetloc(" #Crumpled#paper", "scr_text_slash_scr_text_gml_492_0");
            global.choicemsg[1] = stringsetloc("LANCER#labelled#paper", "scr_text_slash_scr_text_gml_493_0");
            global.choicemsg[2] = stringsetloc("Neat paper", "scr_text_slash_scr_text_gml_494_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_497_0_b");
            global.msg[0] = stringsetloc("* Alright^1, everyone's put in their entries!/", "scr_text_slash_scr_text_gml_496_0");
            global.msg[1] = stringsetloc("\\E2* Blue person^1, you can choose./", "scr_text_slash_scr_text_gml_497_0");
            global.msg[2] = stringsetloc("\\E1* Since you look like you don't care./", "scr_text_slash_scr_text_gml_498_0");
            global.msg[3] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_499_0");
            global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_502_0");
            break;
        
        case 176:
            if (global.choice == 0)
            {
                global.fc = 0;
                global.typer = 6;
                global.msg[0] = stringsetloc("* (You take the crumpled up piece of paper.)/", "scr_text_slash_scr_text_gml_508_0");
                global.msg[1] = stringsetloc("* (You open it up.)/", "scr_text_slash_scr_text_gml_509_0");
                scr_lanface(2, 2);
                global.msg[3] = stringsetloc("* OK!!&* And your name is...!/", "scr_text_slash_scr_text_gml_511_0");
                global.msg[4] = stringsetloc("\\E6* ... Hmm./", "scr_text_slash_scr_text_gml_512_0");
                global.msg[5] = stringsetloc("\\E7* I don't think I'm allowed to say this one./", "scr_text_slash_scr_text_gml_513_0");
                scr_susface(6, 2);
                global.msg[7] = stringsetloc("* It's PRONOUNCED^1, \"The $!?# Squad.\"/", "scr_text_slash_scr_text_gml_517_0_b");
                scr_lanface(8, 7);
                global.msg[9] = stringsetloc("* Woah^1, I'm not allowed to say Tier-TWO swear words!/", "scr_text_slash_scr_text_gml_517_0");
                global.msg[10] = stringsetloc("\\E3* Wow^1. You three's collective dad must be very cool./", "scr_text_slash_scr_text_gml_518_0");
                scr_ralface(11, 1);
                global.msg[12] = stringsetloc("* Er^1, could we PERHAPS consider a DIFFERENT name?/", "scr_text_slash_scr_text_gml_520_0");
                scr_susface(13, 2);
                global.msg[14] = stringsetloc("* Ralsei^1, you don't HAVE to be in our Squad./", "scr_text_slash_scr_text_gml_522_0");
                scr_lanface(15, 2);
                global.msg[16] = stringsetloc("* Yeah! How about I be in the Squad and YOU be the bad guy?/", "scr_text_slash_scr_text_gml_524_0");
                global.msg[17] = stringsetloc("\\E1* Here^1.&* Call up my dad./", "scr_text_slash_scr_text_gml_525_0");
                global.msg[18] = stringsetloc("* Tell him he has a new son./", "scr_text_slash_scr_text_gml_526_0");
                global.msg[19] = stringsetloc("\\E3* One that has to take a shower every time he reads a swear word./", "scr_text_slash_scr_text_gml_527_0");
                scr_ralface(20, "A");
                global.msg[21] = stringsetloc("* OK^1, fine^1!&* We can keep the name^1!&* I just won't say it./", "scr_text_slash_scr_text_gml_529_0");
                scr_lanface(22, 2);
                global.msg[23] = stringsetloc("* Haha^1, me too!/", "scr_text_slash_scr_text_gml_531_0");
                global.msg[24] = stringsetloc("\\E1* See ya^1, losers^1!&* It's shower time!/%", "scr_text_slash_scr_text_gml_532_0");
                global.flag[214] = 1;
            }
            
            if (global.choice == 1)
            {
                global.fc = 0;
                global.typer = 6;
                global.msg[0] = stringsetloc("* (You take the paper with \"LANCER\" written on the outside.)/", "scr_text_slash_scr_text_gml_540_0");
                global.msg[1] = stringsetloc("* (You open it up.)/", "scr_text_slash_scr_text_gml_541_0");
                global.msg[2] = stringsetloc("* (On the inside...)&* (It also says \"LANCER.\")/", "scr_text_slash_scr_text_gml_542_0");
                scr_lanface(3, 3);
                global.msg[4] = stringsetloc("* Wow^1, who did that one^1?&* It's really good!/", "scr_text_slash_scr_text_gml_544_0");
                scr_ralface(5, "A");
                global.msg[6] = stringsetloc("* Wait^1, why do YOU get to choose the name?/", "scr_text_slash_scr_text_gml_546_0");
                scr_susface(7, 1);
                global.msg[8] = stringsetloc("* Hey^1.&* He didn't^1, Kris did./", "scr_text_slash_scr_text_gml_548_0");
                scr_lanface(9, 3);
                global.msg[10] = stringsetloc("* Yeah^1!&* It doesn't matter who MAY have written it!/", "scr_text_slash_scr_text_gml_550_0");
                global.msg[11] = stringsetloc("\\E1* Regardless^1, LANCER's going to meet absolute doom!/", "scr_text_slash_scr_text_gml_551_0");
                global.msg[12] = stringsetloc("\\E6* ... this name feels weird^1, actually./", "scr_text_slash_scr_text_gml_552_0");
                global.msg[13] = stringsetloc("\\E4* Hmmm..../", "scr_text_slash_scr_text_gml_553_0");
                global.msg[14] = stringsetloc("\\E3* I know^1! Let's call it the LANCER FAN CLUB for short!/", "scr_text_slash_scr_text_gml_554_0");
                global.msg[15] = stringsetloc("\\E3* See you later^1, me!/%", "scr_text_slash_scr_text_gml_555_0");
                global.flag[214] = 2;
            }
            
            if (global.choice == 2)
            {
                global.fc = 0;
                global.typer = 6;
                global.msg[0] = stringsetloc("* (You take the neatly folded piece of paper.)/", "scr_text_slash_scr_text_gml_563_0");
                global.msg[1] = stringsetloc("* (You open it up.)/", "scr_text_slash_scr_text_gml_564_0");
                scr_lanface(2, 7);
                global.msg[3] = stringsetloc("* \"The Legendary Heroes: The Herald of Fun and Friendship\"/", "scr_text_slash_scr_text_gml_566_0");
                scr_ralface(4, 8);
                global.msg[5] = stringsetloc("* Oh^1, oh!&* That's mine!/", "scr_text_slash_scr_text_gml_568_0");
                global.msg[6] = stringsetloc("\\E0* See^1, I think it's the perfect name.../", "scr_text_slash_scr_text_gml_569_0");
                global.msg[7] = stringsetloc("\\E6* Because we're all friends^1: That like to have a lot of fun./", "scr_text_slash_scr_text_gml_570_0");
                scr_susface(8, 0);
                global.msg[9] = stringsetloc("* Okay^1, first..^1. jeez^1, that's a mouthful^1, dude./", "scr_text_slash_scr_text_gml_572_0");
                global.msg[10] = stringsetloc("* Second^1, what are our enemies gonna think?/", "scr_text_slash_scr_text_gml_573_0");
                global.msg[11] = stringsetloc("\\E2* That we're gonna be BUDDIES with 'em?/", "scr_text_slash_scr_text_gml_574_0");
                global.msg[12] = stringsetloc("* Let's change it to something SHORT^1! INTIMIDATING!/", "scr_text_slash_scr_text_gml_575_0");
                global.msg[13] = stringsetloc("\\E4* Something PUNCHY^1! Something BAD-ASS!/", "scr_text_slash_scr_text_gml_576_0");
                scr_ralface(14, 1);
                global.msg[15] = stringsetloc("* ... like what?/", "scr_text_slash_scr_text_gml_578_0");
                scr_susface(16, 2);
                global.msg[17] = stringsetloc("* Well^1, uh..^1.&* Y'know^1, for starters.../", "scr_text_slash_scr_text_gml_580_0");
                global.msg[18] = stringsetloc("\\E0* How about..^1.&* JUST^1, uh..^1./", "scr_text_slash_scr_text_gml_581_0");
                global.msg[19] = stringsetloc("\\E6* \"The Fun Gang.\"/", "scr_text_slash_scr_text_gml_582_0");
                global.msg[20] = stringsetloc("\\E6* Ya know^1, just^1, uh^1, concentrating on the \"Fun\" part./", "scr_text_slash_scr_text_gml_583_0");
                scr_lanface(21, 1);
                global.msg[22] = stringsetloc("* It's perfect!!!/", "scr_text_slash_scr_text_gml_585_0");
                global.msg[23] = stringsetloc("* Well^1, see ya^1, Fun Gang!/", "scr_text_slash_scr_text_gml_586_0");
                global.msg[24] = stringsetloc("* I've got to osmose my afternoon milk!/%", "scr_text_slash_scr_text_gml_587_0");
                global.flag[214] = 3;
            }
            
            break;
        
        case 180:
            global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_596_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_597_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_600_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_601_0_b");
            global.msg[0] = stringsetloc("\\E2* Well jingle my goshdarn bells^1! Looks like Krismas came early!/", "scr_text_slash_scr_text_gml_600_0");
            global.msg[1] = stringsetloc("\\E1* Alright^1, Kris^1. Just gimme the straight shot./", "scr_text_slash_scr_text_gml_601_0");
            global.msg[2] = stringsetloc("\\E2* Why you here^1?&* Did your mom make you come here?/", "scr_text_slash_scr_text_gml_602_0");
            global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_603_0");
            global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_606_0");
            break;
        
        case 181:
            global.choicemsg[0] = stringsetloc(" #Noelle", "scr_text_slash_scr_text_gml_608_0");
            global.choicemsg[1] = stringsetloc(" #Family", "scr_text_slash_scr_text_gml_609_0");
            global.choicemsg[2] = stringsetloc("Illness", "scr_text_slash_scr_text_gml_610_0");
            global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_613_0_b");
            global.msg[0] = stringsetloc("\\E0* Hey^1, Kris^1, you wanna chat or something?/", "scr_text_slash_scr_text_gml_612_0");
            global.msg[1] = stringsetloc("\\E2* Don't worry^1, there's no way you can bore me right now!/", "scr_text_slash_scr_text_gml_613_0");
            global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_614_0");
            
            if (global.flag[255] < 2)
            {
                global.flag[255] = 2;
                global.msg[0] = stringsetloc("\\E2* Hahaha^1, that's what I thought^1!&* She's a PEACH^1, huh...?/", "scr_text_slash_scr_text_gml_619_0");
                global.msg[1] = stringsetloc("\\E7* Fuzzy n' sweet on the outside^1, a total NUT on the inside!/", "scr_text_slash_scr_text_gml_620_0");
                global.msg[2] = stringsetloc("\\E0* Oh^1, your dad^1? Yeah^1, he's a real fruit himself too./", "scr_text_slash_scr_text_gml_621_0");
                global.msg[3] = stringsetloc("\\E7* Which one^1? I dunno^1, probably a hairy one...^1 like a kiwi./", "scr_text_slash_scr_text_gml_622_0");
                global.msg[4] = stringsetloc("\\E7* Hahahaha!!!/", "scr_text_slash_scr_text_gml_625_0");
                global.msg[5] = stringsetloc("\\E0* Okay^1, okay^1, seriously^1, you wanna chat or something?/", "scr_text_slash_scr_text_gml_626_0");
                
                if (global.choice == 1)
                {
                    global.fe = 1;
                    global.msg[0] = stringsetloc("\\E1* Really^1?&* You've grown up a lot^1, Kris./", "scr_text_slash_scr_text_gml_630_0");
                    global.msg[1] = stringsetloc("\\E4* I'm proud of you./", "scr_text_slash_scr_text_gml_631_0");
                    global.msg[2] = stringsetloc("\\E5* Wasn't too long ago you were just the creepy kid next door./", "scr_text_slash_scr_text_gml_632_0");
                    global.msg[3] = stringsetloc("\\E7* Now you're the creepy kid right in front of me!/", "scr_text_slash_scr_text_gml_633_0");
                    global.msg[4] = stringsetloc("* Hahahaha!!!/", "scr_text_slash_scr_text_gml_634_0");
                    global.msg[5] = stringsetloc("\\E0* Okay^1, okay^1, seriously^1, you wanna chat or something?/", "scr_text_slash_scr_text_gml_635_0");
                }
                
                global.msg[6] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_637_0");
            }
            
            break;
        
        case 182:
            global.msg[0] = stringsetloc("* Huh?/%", "scr_text_slash_scr_text_gml_642_0");
            
            if (global.choice == 0)
            {
                global.fe = 0;
                global.msg[0] = stringsetloc("\\E4* She's a sweetheart^1, isn't she^1, Kris?/", "scr_text_slash_scr_text_gml_646_0");
                global.msg[1] = stringsetloc("\\E0* Smart, kind, sweet... couldn't ask for a better daughter./", "scr_text_slash_scr_text_gml_647_0");
                global.msg[2] = stringsetloc("\\E5* I just wish she wasn't so..^1. defenseless./", "scr_text_slash_scr_text_gml_648_0");
                global.msg[3] = stringsetloc("\\E1* Scary movies^1, bugs^1, Santa Claus..^1. everything scares her./", "scr_text_slash_scr_text_gml_649_0");
                global.msg[4] = stringsetloc("\\E5* And when it happens^1, she freezes like a deer in headlights./", "scr_text_slash_scr_text_gml_650_0");
                global.msg[5] = stringsetloc("\\E0* Remember she used to even be afraid of humans under the bed?/", "scr_text_slash_scr_text_gml_651_0");
                global.msg[6] = stringsetloc("\\E7* (Kris^1, it was NOT nice of you to hide under there^1, by the way!)/", "scr_text_slash_scr_text_gml_652_0");
                global.msg[7] = stringsetloc("\\E1* ... anyhow^1, that's what's tough about being in here^1, Kris./", "scr_text_slash_scr_text_gml_653_0");
                global.msg[8] = stringsetloc("\\E4* Not what's going on with me./", "scr_text_slash_scr_text_gml_654_0");
                global.msg[9] = stringsetloc("\\E5* Just that..^1. in the meantime^1, I can't be there to protect her./", "scr_text_slash_scr_text_gml_655_0");
                global.msg[10] = stringsetloc("\\E3* Keep an eye out for her^1, OK?/%", "scr_text_slash_scr_text_gml_656_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E3* Kris^1, even if we've grown apart^1, we still love your family./", "scr_text_slash_scr_text_gml_660_0");
                global.msg[1] = stringsetloc("\\E4* After all^1, me and Asgore were college pals^1, right?/", "scr_text_slash_scr_text_gml_661_0");
                global.msg[2] = stringsetloc("\\E1* Oh hey..^1. now that Asriel's off to college.../", "scr_text_slash_scr_text_gml_662_0");
                global.msg[3] = stringsetloc("\\E2* Y'think he's doing any CRAZY parties^1, like me and your dad?/", "scr_text_slash_scr_text_gml_663_0");
                global.msg[4] = stringsetloc("\\E3* Heh^1, I'm just pulling your leg^1. Your dad was no party animal./", "scr_text_slash_scr_text_gml_664_0");
                global.msg[5] = stringsetloc("\\E7* Your MOTHER on the other hand...^1! Whoo!/", "scr_text_slash_scr_text_gml_665_0");
                global.msg[6] = stringsetloc("\\E4* She'd alway fuss about going^1, but once the party started.../", "scr_text_slash_scr_text_gml_666_0");
                global.msg[7] = stringsetloc("\\E7* Yikes^1, man!/", "scr_text_slash_scr_text_gml_667_0");
                global.msg[8] = stringsetloc("\\E7* Once she hit me clear across the room with a key lime pie!/", "scr_text_slash_scr_text_gml_668_0");
                global.msg[9] = stringsetloc("\\E2* I got smashed into the snack table and toppled everything!/", "scr_text_slash_scr_text_gml_669_0");
                global.msg[10] = stringsetloc("\\E7* Tasty pie though^1. Couldn't complain./%", "scr_text_slash_scr_text_gml_670_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E1* ... So^1, why am I in here...?/", "scr_text_slash_scr_text_gml_674_0");
                global.msg[1] = stringsetloc("\\E4* Well^1, they found some crap^1, so it's just some tests./", "scr_text_slash_scr_text_gml_675_0");
                global.msg[2] = stringsetloc("\\E3* Yeah, it's no big deal^1. Nothing a Holiday can't handle./", "scr_text_slash_scr_text_gml_676_0");
                global.msg[3] = stringsetloc("\\E4* I'll be outta here in a jiff, then I can go back to, I dunno.../", "scr_text_slash_scr_text_gml_677_0");
                global.msg[4] = stringsetloc("\\E2* Yelling at you for getting tangled in our light display./%", "scr_text_slash_scr_text_gml_678_0");
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E2* Then what the hell're you here for^1, Kris!^1? To gawk!?/", "scr_text_slash_scr_text_gml_683_0");
                global.msg[1] = stringsetloc("\\E7* You thought this was the zoo or something!^1? C'mon!/%", "scr_text_slash_scr_text_gml_684_0");
            }
            
            break;
        
        case 185:
            global.choicemsg[0] = stringsetloc("No No No#No No No#No No No", "scr_text_slash_scr_text_gml_690_0");
            global.choicemsg[1] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_691_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_694_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_695_0_b");
            global.msg[0] = stringsetloc("* (There's an anime review.^1)&* (Read it?)/", "scr_text_slash_scr_text_gml_694_0");
            global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_695_0");
            global.msg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_698_0");
            break;
        
        case 186:
            global.msg[0] = stringsetloc("* Teen'z Corner&Monthly Toon Review:&Mew Mew Kissy Cutie 2/", "scr_text_slash_scr_text_gml_700_0");
            global.msg[1] = stringsetloc("* This reviewer had Mew Mew 2 as her first exposure to the series.../", "scr_text_slash_scr_text_gml_701_0");
            global.msg[2] = stringsetloc("* And let her tell you^1, it makes Mew Mew 1 look like a dumpster with sparkly cat ears!/", "scr_text_slash_scr_text_gml_702_0");
            global.msg[3] = stringsetloc("* With a darker storyline and more mature themes.../", "scr_text_slash_scr_text_gml_703_0");
            global.msg[4] = stringsetloc("* The second one treats the viewer like a real adult.../", "scr_text_slash_scr_text_gml_704_0");
            global.msg[5] = stringsetloc("* Instead of like an animal that will die if it goes ten seconds without seeing a beach ball./", "scr_text_slash_scr_text_gml_705_0");
            global.msg[6] = stringsetloc("* Not to mention, Mew Mew's character in the first one.../", "scr_text_slash_scr_text_gml_706_0");
            global.msg[7] = stringsetloc("* Is more stale than the ramen I eat at home by myself with the lights off./", "scr_text_slash_scr_text_gml_707_0");
            global.msg[8] = stringsetloc("* Teens and older should check out this dark masterpiece!/", "scr_text_slash_scr_text_gml_708_0");
            global.msg[9] = stringsetloc("* Signed^1,&The Anonymous Yellow Lizard/%", "scr_text_slash_scr_text_gml_709_0");
            
            if (global.choice < 1)
                global.msg[0] = stringsetloc("* (You decide not to read it.)/%", "scr_text_slash_scr_text_gml_710_0");
            
            break;
        
        case 190:
            global.choicemsg[0] = stringsetloc(" #Sit", "scr_text_slash_scr_text_gml_716_0");
            global.choicemsg[1] = stringsetloc(" #Don't Sit", "scr_text_slash_scr_text_gml_717_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_718_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_719_0_b");
            global.msg[0] = stringsetloc("* (Gerson Boom Memorial Bench)/", "scr_text_slash_scr_text_gml_718_0");
            global.msg[1] = stringsetloc("* \"Throughout my career^1, some of my best ideas came from dreams.\"/", "scr_text_slash_scr_text_gml_719_0");
            global.msg[2] = stringsetloc("* \"Take a rest here. If anyone asks -- you're writing!\"/%", "scr_text_slash_scr_text_gml_720_0");
            global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_721_0");
            global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_724_0");
            break;
        
        case 191:
            if (global.choice == 0)
                global.msg[0] = stringsetloc("* (Didn't feel like it.)/%", "scr_text_slash_scr_text_gml_730_0");
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (You decided not to sit.)/%", "scr_text_slash_scr_text_gml_736_0");
            
            break;
        
        case 192:
            global.choicemsg[0] = stringsetloc(" #Stick fingers", "scr_text_slash_scr_text_gml_739_0");
            global.choicemsg[1] = stringsetloc(" #Don't", "scr_text_slash_scr_text_gml_740_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_743_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_744_0_b");
            global.msg[0] = stringsetloc("* (It's a metal picnic table.^1)&* (Cigarette butts lay on the ground underneath it.)/", "scr_text_slash_scr_text_gml_744_0");
            global.msg[1] = stringsetloc("* (Stick your fingers into the holes in the table?)/", "scr_text_slash_scr_text_gml_745_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_746_0");
            global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_749_0");
            
            if (global.flag[257] == 1)
                global.msg[0] = stringsetloc("* (It's a metal picnic table.^1)&* (Cigarette butts lay on the ground underneath it.)/%", "scr_text_slash_scr_text_gml_750_0");
            
            break;
        
        case 193:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* (Your fingers don't fit through the top anymore.^1)&* (You try from below.)/", "scr_text_slash_scr_text_gml_757_0");
                global.msg[1] = stringsetloc("* (... your hand became covered in cobwebs.)/%", "scr_text_slash_scr_text_gml_758_0");
                global.flag[257] = 1;
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (You decided not to stick your fingers through.)/%", "scr_text_slash_scr_text_gml_764_0");
            
            break;
        
        case 195:
            global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_770_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_771_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_774_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_775_0_b");
            global.msg[0] = stringsetloc("\\M0* Hey..^1. there..^1.&* Noticed you were..^1.&* Here.../", "scr_text_slash_scr_text_gml_775_0");
            global.msg[1] = stringsetloc("\\M1* It's me^1!&* You know ME^1, right^1?&* Of course you do!/", "scr_text_slash_scr_text_gml_776_0");
            global.msg[2] = stringsetloc("\\M0* I'm REAL popular^1!&* I just!/", "scr_text_slash_scr_text_gml_777_0");
            global.msg[3] = stringsetloc("\\M3* Don't have any friends.../", "scr_text_slash_scr_text_gml_778_0");
            global.msg[4] = stringsetloc("\\M1* But it's OK^1, y'hear^1!&* Because you're y'here!/", "scr_text_slash_scr_text_gml_779_0");
            global.msg[5] = stringsetloc("\\M0* Will YOU be my friend?/", "scr_text_slash_scr_text_gml_780_0");
            global.msg[6] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_781_0");
            global.msg[7] = stringsetloc(" ", "scr_text_slash_scr_text_gml_784_0");
            break;
        
        case 196:
            global.choicemsg[0] = stringsetloc(" #Kris", "scr_text_slash_scr_text_gml_787_0");
            global.choicemsg[1] = stringsetloc(" #Hippo-#potamus", "scr_text_slash_scr_text_gml_788_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_791_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_792_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\M4* Oh^1! Oh^1!&* I'm so happy^1, y'hear!^1?&* I'm so happy I..^1. I.../", "scr_text_slash_scr_text_gml_795_0");
                global.msg[1] = stringsetloc("\\M3* I don't know what to do^1!&* I don't remember being this happy before!/", "scr_text_slash_scr_text_gml_796_0");
                global.msg[2] = stringsetloc("\\M2* What's your name^1, friend?/", "scr_text_slash_scr_text_gml_797_0");
                global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_798_0");
                global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_801_0");
            }
            
            if (global.choice == 1)
            {
                global.flag[258] = 3;
                global.flag[20] = 1;
                global.msg[0] = stringsetloc("%%%", "scr_text_slash_scr_text_gml_807_0");
            }
            
            break;
        
        case 197:
            global.choicemsg[0] = stringsetloc(" #Onion", "scr_text_slash_scr_text_gml_810_0");
            global.choicemsg[1] = stringsetloc(" #Beauty", "scr_text_slash_scr_text_gml_811_0");
            global.choicemsg[2] = stringsetloc("Asriel II", "scr_text_slash_scr_text_gml_812_0");
            global.choicemsg[3] = stringsetloc("Disgusting", "scr_text_slash_scr_text_gml_813_0");
            
            if (global.choice == 0)
            {
                global.flag[259] = 1;
                global.msg[0] = stringsetloc("\\M0* Kris^1! That's you^1!&* That's a real nice name for a friend!/", "scr_text_slash_scr_text_gml_818_0");
            }
            
            if (global.choice == 1)
            {
                global.flag[259] = 2;
                global.msg[0] = stringsetloc("\\M0* H..^1. Hippa..^1. Hyper..^1. Hoper..^1.&* Um^1, Hippopotamus^1! That's you^1!&* Big name^1, but it's worth it!/", "scr_text_slash_scr_text_gml_823_0");
            }
            
            global.msg[1] = stringsetloc("\\M1* Oh^1, excuse me^1!&* I forgot to introduce myself!/", "scr_text_slash_scr_text_gml_826_0");
            global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_827_0");
            global.msg[3] = stringsetloc("\\M3* ... Actually^1, since no one talks to me^1, I forgot my own name.../", "scr_text_slash_scr_text_gml_828_0");
            nn = stringsetloc("Kris", "scr_text_slash_scr_text_gml_831_0_b");
            
            if (global.flag[259] == 2)
                nn = stringsetloc("Hippopotatomus", "scr_text_slash_scr_text_gml_832_0_b");
            
            global.msg[4] = stringsetsubloc("\\M1* ~1^1!&* Can you give me a name...?/", nn, "scr_text_slash_scr_text_gml_831_0");
            global.msg[5] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_832_0");
            global.msg[6] = stringsetloc(" ", "scr_text_slash_scr_text_gml_835_0");
            break;
        
        case 198:
            if (global.choice == 0)
            {
                global.flag[258] = 2;
                global.flag[260] = 1;
                global.msg[0] = stringsetloc("\\M0* Hmmm^1! It's perfect^1, y'hear^1!&* I don't know what it means^1, but it's perfect!/", "scr_text_slash_scr_text_gml_841_0");
                global.msg[1] = stringsetloc("\\M4* Hmm!^1!&* Feels like it's shaped like me^1!&* Feels like it smells like me!/", "scr_text_slash_scr_text_gml_842_0");
                global.msg[2] = stringsetloc("\\M2* Wait^1, what was the name^1?&* U..^1. Umyum^1? Yeah^1! It's perfect^1!&* Umyum^1, that's my name./", "scr_text_slash_scr_text_gml_843_0");
            }
            
            if (global.choice == 1)
            {
                global.flag[258] = 2;
                global.flag[260] = 2;
                global.msg[0] = stringsetloc("\\M0^1* Wow..^1.&* What a wonderful name!/", "scr_text_slash_scr_text_gml_849_0");
                global.msg[1] = stringsetloc("\\M4* Feels like my self-esteem's in full bloom^1! Feels like my head's about to flower!/", "scr_text_slash_scr_text_gml_850_0");
                global.msg[2] = stringsetloc("\\M2* Wait^1, what was the name^1?&* B..^1. Bootis^1? Yeah^1! Perfect^1!&* The taste^1, the smell^1, the.../", "scr_text_slash_scr_text_gml_851_0");
            }
            
            if (global.choice == 2)
            {
                global.flag[258] = 2;
                global.flag[260] = 3;
                global.msg[0] = stringsetloc("\\M2* Asriel II..^1. Mmm..^1.&* Sounds..^1. familiar^1.&* It feels like..^1. a memory!/", "scr_text_slash_scr_text_gml_858_0");
                global.msg[1] = stringsetloc("\\M4* It feels like that good boy..^1.&* That threw those good corn flakes in the water for me./", "scr_text_slash_scr_text_gml_859_0");
                global.msg[2] = stringsetloc("\\M2* Wait^1, what was the name^1?&* C..^1. Cereal^1? Yeah^1! I love Cereal^1! Bathe me in flakes!/", "scr_text_slash_scr_text_gml_860_0");
            }
            
            if (global.choice == 3)
            {
                global.flag[258] = 3;
                global.flag[260] = 4;
                global.flag[20] = 1;
                global.msg[0] = stringsetloc("%%%", "scr_text_slash_scr_text_gml_869_0");
            }
            
            global.msg[3] = stringsetloc("\\M0* Thank you for giving me a name^1!&* I'll cherish it^1, y'hear!?/", "scr_text_slash_scr_text_gml_870_0");
            global.msg[4] = stringsetloc("\\M0* .../", "scr_text_slash_scr_text_gml_871_0");
            global.msg[5] = stringsetloc("\\M2* K..^1. Krismas^1?&* That's your name^1, right?/", "scr_text_slash_scr_text_gml_872_0");
            
            if (global.flag[259] == 2)
                global.msg[5] = stringsetloc("\\M3* Um^1, H..^1. Hippa..^1. um..^1.&* Hyper Potato Mask^1.&* That's your name^1, right?/", "scr_text_slash_scr_text_gml_873_0");
            
            global.msg[6] = stringsetloc("\\M1* I wanna tell you..^1. something..^1. tomorrow.../", "scr_text_slash_scr_text_gml_874_0");
            global.msg[7] = stringsetloc("\\M5* Somethin' I can only tell a friend.../", "scr_text_slash_scr_text_gml_875_0");
            global.msg[8] = stringsetloc("\\M5* Come back soon, y'hear.../%", "scr_text_slash_scr_text_gml_876_0");
            break;
        
        case 210:
            global.choicemsg[0] = stringsetloc("Open#Fridge", "scr_text_slash_scr_text_gml_880_0");
            global.choicemsg[1] = stringsetloc(" #Don't", "scr_text_slash_scr_text_gml_881_0");
            global.choicemsg[2] = stringsetloc("See photos", "scr_text_slash_scr_text_gml_882_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_885_0");
            
            if (read == 0)
            {
                global.msg[0] = stringsetloc("* (It's a rusty fridge with some photos on it.)/", "scr_text_slash_scr_text_gml_886_0");
                scr_asgface(1, 0);
                global.msg[2] = stringsetloc("\\E2* Oh^1, Kris^1.&* If you're hungry.../", "scr_text_slash_scr_text_gml_888_0");
                global.msg[3] = stringsetloc("\\E0* ... help yourself to anything you want./", "scr_text_slash_scr_text_gml_889_0");
                global.msg[4] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_890_0");
            }
            else
            {
                global.msg[0] = stringsetloc("* (It's a rusty fridge with some photos on it.)/", "scr_text_slash_scr_text_gml_895_0");
                global.msg[1] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_896_0");
            }
            
            break;
        
        case 211:
            global.fc = 0;
            global.typer = 5;
            global.msg[0] = stringsetloc("* Nothing happened./%", "scr_text_slash_scr_text_gml_903_0");
            
            if (global.choice == 0)
            {
                if (global.flag[263] == 2)
                    global.msg[0] = stringsetloc("* (There are two Eggs inside the fridge.)/%", "scr_text_slash_scr_text_gml_908_0");
                
                if (global.flag[263] == 1)
                {
                    global.msg[0] = stringsetloc("* (All that's inside is a jar with a single pickle in it...)/", "scr_text_slash_scr_text_gml_913_0");
                    global.msg[1] = stringsetloc("* (... and^1, for some reason^1, a lone egg.)/", "scr_text_slash_scr_text_gml_914_0");
                    global.msg[2] = stringsetloc("* (You decide to pass.)/%", "scr_text_slash_scr_text_gml_915_0");
                }
                
                if (global.flag[263] == 0)
                {
                    global.msg[0] = stringsetloc("* (All that's inside is a jar with a single pickle in it.)/", "scr_text_slash_scr_text_gml_920_0");
                    global.msg[1] = stringsetloc("* (You decide to pass.)/%", "scr_text_slash_scr_text_gml_921_0");
                    global.flag[263] = 1;
                    
                    if (scr_litemcheck(8))
                    {
                        global.msg[0] = stringsetloc("* (All that's inside is a jar with a single pickle in it.)/", "scr_text_slash_scr_text_gml_925_0");
                        global.msg[1] = stringsetloc("* (...)/", "scr_text_slash_scr_text_gml_926_0");
                        global.msg[2] = stringsetloc("* (You put the Egg you were carrying inside^1, too...)/%", "scr_text_slash_scr_text_gml_927_0");
                        
                        for (var i = 0; i < 8; i += 1)
                        {
                            if (global.litem[i] == 8)
                                scr_litemshift(i, 0);
                        }
                        
                        global.flag[263] = 2;
                    }
                }
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (You decide not to look.)/%", "scr_text_slash_scr_text_gml_944_0");
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("* (A photo of your mother and father on their wedding day.)/", "scr_text_slash_scr_text_gml_948_0");
                global.msg[1] = stringsetloc("* (She's holding a bouquet of seven flowers.)/", "scr_text_slash_scr_text_gml_949_0");
                global.msg[2] = stringsetloc("* (A reindeer-looking monster stands nearby in a tuxedo.)/", "scr_text_slash_scr_text_gml_950_0");
                global.msg[3] = stringsetloc("* (They all look happy.)/%", "scr_text_slash_scr_text_gml_951_0");
            }
            
            break;
        
        case 215:
            global.choicemsg[0] = stringsetloc(" #Asriel", "scr_text_slash_scr_text_gml_956_0");
            global.choicemsg[1] = stringsetloc(" #Neighbors", "scr_text_slash_scr_text_gml_957_0");
            global.choicemsg[2] = stringsetloc("Sister", "scr_text_slash_scr_text_gml_958_0");
            global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_959_0");
            global.msg[0] = stringsetloc("\\E4* Lil Krissy!!^1!&* Like, what's up!^1?&* Give Aunt Catty a hug!/", "scr_text_slash_scr_text_gml_962_0");
            global.msg[1] = stringsetloc("\\E2* Mwah^1!&* Mwah^1!&* Mwah!/", "scr_text_slash_scr_text_gml_963_0");
            global.msg[2] = stringsetloc("\\E8* Ha ha ha^1!&* I'm not even actually your aunt!/", "scr_text_slash_scr_text_gml_964_0");
            global.msg[3] = stringsetloc("\\E5* Oh my god..^1.&* Can I talk to you about something?/", "scr_text_slash_scr_text_gml_965_0");
            global.msg[4] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_966_0");
            global.msg[5] = stringsetloc("\\E6* Actually^1, like^1, anything^1, though^1.&* Your choice./", "scr_text_slash_scr_text_gml_967_0");
            global.msg[6] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_968_0");
            
            if (global.flag[265] > 0)
            {
                global.msg[0] = stringsetloc("\\E4* Lil Krissy^1!&* Did you wanna talk about something!?/", "scr_text_slash_scr_text_gml_971_0");
                global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_972_0");
            }
            
            global.flag[265] = 1;
            break;
        
        case 216:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E2* Oh my god^1, Asriel^1!&* Like^1, what a cutie pie!/", "scr_text_slash_scr_text_gml_980_0");
                global.msg[1] = stringsetloc("\\E6* Do you remember when me and him went to the dance?/", "scr_text_slash_scr_text_gml_981_0");
                global.msg[2] = stringsetloc("\\E2* That was like..^1.&* The best night EVER!/", "scr_text_slash_scr_text_gml_982_0");
                global.msg[3] = stringsetloc("\\E4* Even though I spilled the entire punch bowl all over him.../", "scr_text_slash_scr_text_gml_983_0");
                global.msg[4] = stringsetloc("\\E6* And danced inappropriately in front of your mom.../", "scr_text_slash_scr_text_gml_984_0");
                global.msg[5] = stringsetloc("\\E5* And got arrested in the parking lot for making a scene.../", "scr_text_slash_scr_text_gml_985_0");
                global.msg[6] = stringsetloc("\\E2* Hahaha^1! That was SO much fun^1!&* Tell him I said hi!/%", "scr_text_slash_scr_text_gml_986_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E1* Like^1, that green girl next door?/", "scr_text_slash_scr_text_gml_990_0");
                global.msg[1] = stringsetloc("\\E5* Oh my god^1, Krissy^1.&* She's like..^1. my LIFE VILLAIN./", "scr_text_slash_scr_text_gml_991_0");
                global.msg[2] = stringsetloc("\\E6* Like^1, the other day^1, I went to see Cat Petters 2.../", "scr_text_slash_scr_text_gml_992_0");
                global.msg[3] = stringsetloc("\\E3* And the only other person in the theater was her!/", "scr_text_slash_scr_text_gml_993_0");
                global.msg[4] = stringsetloc("\\E1* Then I went to QC's and ordered a Catpuccino.../", "scr_text_slash_scr_text_gml_994_0");
                global.msg[5] = stringsetloc("\\E5* And she^1, like^1, was already drinking one!/", "scr_text_slash_scr_text_gml_995_0");
                global.msg[6] = stringsetloc("\\E3* She's SUCH a copycat^1!&* ... uhh^1, copygator?/", "scr_text_slash_scr_text_gml_996_0");
                global.msg[7] = stringsetloc("\\E5* Copysaurus^1?&* Copodile^1?&* IDK^1, she sucks!/%", "scr_text_slash_scr_text_gml_997_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E6* Ooo^1, how's Catti doing^1?&* I have no idea./", "scr_text_slash_scr_text_gml_1001_0");
                global.msg[1] = stringsetloc("\\E5* We^1, like^1, totally can't connect at all!/", "scr_text_slash_scr_text_gml_1002_0");
                global.msg[2] = stringsetloc("\\E1* Yesterday^1, I asked if she wanted to hear me play the ukelele.../", "scr_text_slash_scr_text_gml_1003_0");
                global.msg[3] = stringsetloc("\\E5* She said no^1!&* And then she^1, like^1, told me.../", "scr_text_slash_scr_text_gml_1004_0");
                global.msg[4] = stringsetloc("\\E3* My playing is \"an anti-blessing from Planet Hell.\"/", "scr_text_slash_scr_text_gml_1005_0");
                global.msg[5] = stringsetloc("\\E5* What the HECK^1, Krissy?/", "scr_text_slash_scr_text_gml_1006_0");
                global.msg[6] = stringsetloc("\\E2* That's SOOO cute^1!&* I love my fricked-up lil sis!/%", "scr_text_slash_scr_text_gml_1007_0");
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E6* Oh^1, you gotta go^1?&* Do you have^1, like^1, homework...?/", "scr_text_slash_scr_text_gml_1011_0");
                global.msg[1] = stringsetloc("\\E0* You should^1, like^1, let me help!/", "scr_text_slash_scr_text_gml_1012_0");
                global.msg[2] = stringsetloc("\\E2* Hahaha^1, JK^1!&* I totally don't want to^1! Laters!/%", "scr_text_slash_scr_text_gml_1013_0");
            }
            
            break;
        
        case 220:
            global.choicemsg[0] = stringsetloc("#Neighbor", "scr_text_slash_scr_text_gml_1018_0");
            global.choicemsg[1] = stringsetloc("#Memories", "scr_text_slash_scr_text_gml_1019_0");
            global.choicemsg[2] = stringsetloc("Go Away", "scr_text_slash_scr_text_gml_1020_0");
            global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_1021_0");
            global.msg[0] = stringsetloc("\\E4* Krissy!&* Like^1, long time no see!/", "scr_text_slash_scr_text_gml_1022_0");
            global.msg[1] = stringsetloc("\\E0* What's up^1?&* Did you wanna talk about something?/", "scr_text_slash_scr_text_gml_1023_0");
            global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1024_0");
            break;
        
        case 221:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E2* Ugh^1, that chick next door drives me NUTS./", "scr_text_slash_scr_text_gml_1030_0");
                global.msg[1] = stringsetloc("\\E3* I keep seeing her EVERYWHERE I go^1.&* She's a TOTAL copycat./", "scr_text_slash_scr_text_gml_1031_0");
                global.msg[2] = stringsetloc("\\E5* Like^1, WHY though^1?&* Doesn't she realize she'll NEVER be me?/", "scr_text_slash_scr_text_gml_1032_0");
                global.msg[3] = stringsetloc("\\E6* Honestly^1, her whole family is^1, like^1, SO trashy./", "scr_text_slash_scr_text_gml_1033_0");
                global.msg[4] = stringsetloc("\\E3* Once her sister served me a coffee and I swear it was half cat fur./", "scr_text_slash_scr_text_gml_1034_0");
                global.msg[5] = stringsetloc("\\E6* Like^1, get a hairnet^1, girl^1. For^1, like^1, your whole body./%", "scr_text_slash_scr_text_gml_1035_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E0* Remember that time you wanted to hang out with us big kids?/", "scr_text_slash_scr_text_gml_1040_0");
                global.msg[1] = stringsetloc("\\E6* I was like, \"yeah^1, of course! Just get us some burgers!\"/", "scr_text_slash_scr_text_gml_1041_0");
                global.msg[2] = stringsetloc("\\E3* Then^1, like^1, amazingly..^1.&* You ACTUALLY got them.../", "scr_text_slash_scr_text_gml_1042_0");
                global.msg[3] = stringsetloc("\\E4* So I told you to go back and get some french fries, too.../", "scr_text_slash_scr_text_gml_1043_0");
                global.msg[4] = stringsetloc("\\E5* ... then a dozen miniature cakes.../", "scr_text_slash_scr_text_gml_1044_0");
                global.msg[5] = stringsetloc("\\E6* They were SO good^1, I ate like six!/", "scr_text_slash_scr_text_gml_1045_0");
                global.msg[6] = stringsetloc("\\E3* Then I like..^1.&* Suddenly got so sick I had to go home./", "scr_text_slash_scr_text_gml_1046_0");
                global.msg[7] = stringsetloc("\\E1* Man./", "scr_text_slash_scr_text_gml_1047_0");
                global.msg[8] = stringsetloc("\\E5* So^1, like^1, anyway..^1.&* Kris^1, are you busy?/%", "scr_text_slash_scr_text_gml_1048_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E5* Aww^1, that's no way to talk to your almost-sister-in-law./", "scr_text_slash_scr_text_gml_1053_0");
                global.msg[1] = stringsetloc("\\E4* Nah^1, I'm joking^1.&* But^1, like.../", "scr_text_slash_scr_text_gml_1054_0");
                global.msg[2] = stringsetloc("\\E0* Remember that time I played truth or dare with Azzy?/", "scr_text_slash_scr_text_gml_1055_0");
                global.msg[3] = stringsetloc("\\E5* I^1, like^1, made him give me his first kiss.../", "scr_text_slash_scr_text_gml_1056_0");
                global.msg[4] = stringsetloc("\\E3* Then your mom found out he kissed someone^1, and.../", "scr_text_slash_scr_text_gml_1057_0");
                global.msg[5] = stringsetloc("\\E6* Like^1, I think she basically dialed 911./", "scr_text_slash_scr_text_gml_1058_0");
                global.msg[6] = stringsetloc("\\E5* I swear your family went to church^1, like.../", "scr_text_slash_scr_text_gml_1059_0");
                global.msg[7] = stringsetloc("\\E6* Every single day that week./%", "scr_text_slash_scr_text_gml_1060_0");
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E0* Aw^1, Krissy^1, you just wanted to say hi?/", "scr_text_slash_scr_text_gml_1064_0");
                global.msg[1] = stringsetloc("\\E6* That's adorable..^1.&* Now get out of here./%", "scr_text_slash_scr_text_gml_1065_0");
            }
            
            break;
        
        case 225:
            global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1070_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_1071_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1074_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1075_0_b");
            global.msg[0] = stringsetloc("* Hey^1.&* Hey kid./", "scr_text_slash_scr_text_gml_1074_0");
            global.msg[1] = stringsetloc("* ... ya wanna buy a tutorial?/", "scr_text_slash_scr_text_gml_1075_0");
            global.msg[2] = stringsetloc("* It's only 50 Dark Dollars./", "scr_text_slash_scr_text_gml_1076_0");
            global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1077_0");
            break;
        
        case 226:
            global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1081_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_1082_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1085_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1086_0");
            
            if (global.choice == 0)
            {
                afford = 1;
                
                if (global.gold >= 50)
                    global.gold -= 50;
                else
                    afford = 0;
                
                if (afford == 1)
                {
                    global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1092_0");
                    global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1093_0");
                }
                else
                {
                    global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1097_0");
                    global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Just hand over the money^1, and.../", "scr_text_slash_scr_text_gml_1098_0");
                    global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_1099_0");
                    global.msg[3] = stringsetloc("\\M2* YOU DON'T HAVE ENOUGH MONEY!?/", "scr_text_slash_scr_text_gml_1100_0");
                    global.msg[4] = stringsetloc("\\M1* Jumpin' jigsaws^1!&* You..^1.&* You...!/", "scr_text_slash_scr_text_gml_1101_0");
                    global.msg[5] = stringsetloc("\\M0* You're just like us^1.&* An' people like us gotta help each other out./", "scr_text_slash_scr_text_gml_1102_0");
                    global.msg[6] = stringsetloc("\\M0* C'mon this way./%", "scr_text_slash_scr_text_gml_1103_0");
                }
                
                with (obj_npc_puzzlemaster1)
                    con = 5;
            }
            else
            {
                global.msg[0] = stringsetloc("\\M1* HA^1! HA^1! Did I say FIFTY!^1?&* Well^1, we just went on sale!&* TWENTY^1! TWENTY Dark Dollars!/", "scr_text_slash_scr_text_gml_1111_0");
                global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1112_0");
                afford = 0;
            }
            
            break;
        
        case 227:
            global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1121_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_1122_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1125_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1126_0");
            
            if (global.choice == 0)
            {
                afford = 1;
                
                if (global.gold >= 20)
                    global.gold -= 20;
                else
                    afford = 0;
                
                if (afford == 1)
                {
                    global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1132_0");
                    global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1133_0");
                }
                else
                {
                    global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You'll really buy it!?/", "scr_text_slash_scr_text_gml_1137_0");
                    global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Just hand over the money^1, and.../", "scr_text_slash_scr_text_gml_1138_0");
                    global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_1139_0");
                    global.msg[3] = stringsetloc("\\M2* YOU DON'T HAVE ENOUGH MONEY!?/", "scr_text_slash_scr_text_gml_1140_0");
                    global.msg[4] = stringsetloc("\\M1* Jumpin' jigsaws^1!&* You..^1.&* You...!/", "scr_text_slash_scr_text_gml_1141_0");
                    global.msg[5] = stringsetloc("\\M0* You're just like us^1.&* An' people like us gotta help each other out./", "scr_text_slash_scr_text_gml_1142_0");
                    global.msg[6] = stringsetloc("\\M0* C'mon this way./%", "scr_text_slash_scr_text_gml_1143_0");
                }
                
                with (obj_npc_puzzlemaster1)
                    con = 5;
            }
            else
            {
                global.msg[0] = stringsetloc("\\M2* ONE!!^1! ONLY ONE DOLLAR!!^1!&* PLEASE!!^1! PLEASE!!^1!&* I NEED THIS RIGHT NOW!!!/", "scr_text_slash_scr_text_gml_1151_0");
                global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1152_0");
                afford = 0;
            }
            
            break;
        
        case 228:
            if (global.choice == 0)
            {
                afford = 1;
                
                if (global.gold >= 1)
                    global.gold -= 1;
                else
                    afford = 0;
                
                if (afford == 1)
                {
                    global.msg[0] = stringsetloc("\\M1* R-really!^1?&* You changed your mind!?/", "scr_text_slash_scr_text_gml_1168_0");
                    global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1169_0");
                }
                else
                {
                    global.msg[0] = stringsetloc("\\M1* F-Finally!/", "scr_text_slash_scr_text_gml_1173_0");
                    global.msg[1] = stringsetloc("\\M0* Heheh..^1.&* Just hand over the money^1, and.../", "scr_text_slash_scr_text_gml_1174_0");
                    global.msg[2] = stringsetloc("\\M1* .../", "scr_text_slash_scr_text_gml_1175_0");
                    global.msg[3] = stringsetloc("\\M2* YOU DON'T HAVE A DOLLAR!?/", "scr_text_slash_scr_text_gml_1176_0");
                    global.msg[4] = stringsetloc("\\M1* Jumpin' jigsaws^1!&* You..^1.&* You...!/", "scr_text_slash_scr_text_gml_1177_0");
                    global.msg[5] = stringsetloc("\\M0* You're just like us^1.&* An' people like us gotta help each other out./", "scr_text_slash_scr_text_gml_1178_0");
                    global.msg[6] = stringsetloc("\\M0* C'mon this way./%", "scr_text_slash_scr_text_gml_1179_0");
                }
                
                with (obj_npc_puzzlemaster1)
                    con = 5;
            }
            else
            {
                scr_ralface(0, 6);
                global.msg[1] = stringsetloc("* Er^1, excuse me^1, Sir^1.&* I think I have a dollar./", "scr_text_slash_scr_text_gml_1188_0");
                scr_noface(2);
                global.msg[3] = stringsetloc("\\M0* ... is it Dark?/", "scr_text_slash_scr_text_gml_1190_0");
                scr_ralface(4, 1);
                global.msg[5] = stringsetloc("* Umm^1, yes?/", "scr_text_slash_scr_text_gml_1192_0");
                scr_noface(6);
                global.msg[7] = stringsetloc("* Heheh^1, perfect^1!&* Right this way^1, gentleners!/%", "scr_text_slash_scr_text_gml_1194_0");
                
                with (obj_npc_puzzlemaster1)
                    con = 5;
                
                afford = 0;
            }
            
            break;
        
        case 230:
            global.choicemsg[0] = stringsetloc(" #What's TP?", "scr_text_slash_scr_text_gml_1203_0");
            global.choicemsg[1] = stringsetloc(" #Secret", "scr_text_slash_scr_text_gml_1204_0");
            global.choicemsg[2] = stringsetloc("Gaining TP", "scr_text_slash_scr_text_gml_1205_0");
            global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1206_0");
            global.msg[0] = stringsetloc("* I'm TP Master^1.&* Ask me about TP's./", "scr_text_slash_scr_text_gml_1207_0");
            global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1208_0");
            break;
        
        case 231:
            global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1212_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* TP^1? What's TP^1?&* That's what lets you cast SPELLS^1, see!?/", "scr_text_slash_scr_text_gml_1215_0");
                global.msg[1] = stringsetloc("* When you see that orange bar^1,&* Cast some SPELLS when it's filled up far./", "scr_text_slash_scr_text_gml_1216_0");
                global.msg[2] = stringsetloc("* TP...^1! It's quite a caper^1!&* TP^1! Stands for..^1.&* ... Toilet Paper!/", "scr_text_slash_scr_text_gml_1217_0");
                scr_ralface(3, 9);
                global.msg[4] = stringsetloc("* ... no^1, it stands for Tension Points./", "scr_text_slash_scr_text_gml_1219_0");
                scr_noface(5);
                global.msg[6] = stringsetloc("\\M1* What^1, really!?/%", "scr_text_slash_scr_text_gml_1221_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("* TP only lasts^1, inside a fight^1.&* Once you win^1, it's out of sight./", "scr_text_slash_scr_text_gml_1225_0");
                global.msg[1] = stringsetloc("* Having extra^1, feels unbearable^1.&* No point in saving^1, it's straight-up terrible./", "scr_text_slash_scr_text_gml_1226_0");
                scr_ralface(2, 1);
                global.msg[3] = stringsetloc("* But leftover TP turns into extra money at the end of battle.../", "scr_text_slash_scr_text_gml_1228_0");
                scr_noface(4);
                global.msg[5] = stringsetloc("\\M1* You mean I only should have been using one square!?/%", "scr_text_slash_scr_text_gml_1230_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("* You get TP when you DEFEND^1.&* Protect yourself^1, then cast SPELLs^1, friend./", "scr_text_slash_scr_text_gml_1234_0");
                global.msg[1] = stringsetloc("* You also get TP by getting close to bullets./", "scr_text_slash_scr_text_gml_1235_0");
                global.msg[2] = stringsetloc("* Look for the heart outline when you get close to bullets./", "scr_text_slash_scr_text_gml_1236_0");
                scr_susface(3, 0);
                global.msg[4] = stringsetloc("* You rhymed \"bullets\" with \"bullets.\"/", "scr_text_slash_scr_text_gml_1238_0");
                scr_noface(5);
                global.msg[6] = stringsetloc("\\M1* B-because it's important!/%", "scr_text_slash_scr_text_gml_1240_0");
                
                if (!scr_havechar(2))
                {
                    scr_ralface(3, 1);
                    global.msg[4] = stringsetloc("* You rhymed \"bullets\" with \"bullets\"...?/", "scr_text_slash_scr_text_gml_1245_0");
                }
            }
            
            break;
        
        case 235:
            global.choicemsg[0] = stringsetloc(" #Pacify", "scr_text_slash_scr_text_gml_1252_0");
            global.choicemsg[1] = stringsetloc(" #Healing", "scr_text_slash_scr_text_gml_1253_0");
            global.choicemsg[2] = stringsetloc("Fact", "scr_text_slash_scr_text_gml_1254_0");
            global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1255_0");
            global.msg[0] = stringsetloc("* I'm Ralsei Master^1.&* Ask me about RALSEI's./", "scr_text_slash_scr_text_gml_1256_0");
            global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1257_0");
            break;
        
        case 236:
            global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1261_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* Ralsei's spell's called PACIFY^1.&* Use it on BABIES^1, before they CRY./", "scr_text_slash_scr_text_gml_1264_0");
                scr_ralface(1, 9);
                global.msg[2] = stringsetloc("* What^1? It safely removes a \"TIRED\" enemy from combat./", "scr_text_slash_scr_text_gml_1266_0");
                scr_noface(3);
                global.msg[4] = stringsetloc("\\M1* What if you're fighting a BABY!?/%", "scr_text_slash_scr_text_gml_1268_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("* Ralsei has a spell that HEALS^1, dude./", "scr_text_slash_scr_text_gml_1273_0");
                global.msg[1] = stringsetloc("* Why use that^1, when you can eat FOOD?/", "scr_text_slash_scr_text_gml_1274_0");
                scr_ralface(2, 1);
                global.msg[3] = stringsetloc("* Because you won't have to use up an ITEM?/", "scr_text_slash_scr_text_gml_1276_0");
                scr_noface(4);
                global.msg[5] = stringsetloc("\\M1* I could have avoided all those empty calories!?/%", "scr_text_slash_scr_text_gml_1278_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("* Ralsei loves when you give us MONEY./", "scr_text_slash_scr_text_gml_1282_0");
                global.msg[1] = stringsetloc("* He will hug you^1, and call you HONEY./", "scr_text_slash_scr_text_gml_1283_0");
                scr_ralface(2, "A");
                global.msg[3] = stringsetloc("* Hey^1, that's not true!/", "scr_text_slash_scr_text_gml_1285_0");
                global.msg[4] = stringsetloc("\\E8* You don't need money to get me to do that!/%", "scr_text_slash_scr_text_gml_1286_0");
            }
            
            break;
        
        case 240:
            global.choicemsg[0] = stringsetloc(" #Warning", "scr_text_slash_scr_text_gml_1291_0");
            global.choicemsg[1] = stringsetloc(" #Attack", "scr_text_slash_scr_text_gml_1292_0");
            global.choicemsg[2] = stringsetloc("Fact", "scr_text_slash_scr_text_gml_1293_0");
            global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1294_0");
            global.msg[0] = stringsetloc("* I'm Susie Master^1.&* Ask me about SUSIE's./", "scr_text_slash_scr_text_gml_1295_0");
            global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1296_0");
            break;
        
        case 241:
            global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1300_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* When KRIS uses WARNING^1, SUSIE can't hit^1.&* So make sure to -/", "scr_text_slash_scr_text_gml_1303_0");
                scr_susface(1, 2);
                global.msg[2] = stringsetloc("* So there's no reason to use it./", "scr_text_slash_scr_text_gml_1305_0");
                scr_noface(3);
                global.msg[4] = stringsetloc("\\M1* Unless..^1.&* Unless you wanted not to hurt -/", "scr_text_slash_scr_text_gml_1307_0");
                scr_susface(5, 4);
                global.msg[6] = stringsetloc("* SO THERE'S NO REASON./%", "scr_text_slash_scr_text_gml_1309_0");
                
                if (!scr_havechar(2))
                {
                    global.msg[0] = stringsetloc("* Susie's gone^1, I'm afraid^1, I'm afreet./", "scr_text_slash_scr_text_gml_1313_0");
                    global.msg[1] = stringsetloc("*Seems like WARNING is obsolete./%", "scr_text_slash_scr_text_gml_1314_0");
                }
                
                if (global.plot >= 150)
                {
                    global.msg[0] = stringsetloc("* The days of WARNing^1, have long since past./", "scr_text_slash_scr_text_gml_1318_0");
                    global.msg[1] = stringsetloc("* The circumstances^1, changed pretty fast./%", "scr_text_slash_scr_text_gml_1319_0");
                }
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("* Susie always attacks^1, the foe on top./", "scr_text_slash_scr_text_gml_1326_0");
                global.msg[1] = stringsetloc("* She'll smash them^1, with a crushing chop./", "scr_text_slash_scr_text_gml_1327_0");
                global.msg[2] = stringsetloc("* She always strikes^1, at the first thing she sees.../", "scr_text_slash_scr_text_gml_1328_0");
                scr_susface(3, 2);
                global.msg[4] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_1330_0");
                scr_noface(5);
                global.msg[6] = stringsetloc("\\M1* Oh no^1, oh no^1!&* She's looking at ME!/%", "scr_text_slash_scr_text_gml_1332_0");
                
                if (!scr_havechar(2))
                {
                    global.msg[0] = stringsetloc("* Susie's gone^1, so no attack./", "scr_text_slash_scr_text_gml_1336_0");
                    global.msg[1] = stringsetloc("* Will you two pick up the slack?/%", "scr_text_slash_scr_text_gml_1337_0");
                }
                
                if (global.plot >= 150)
                {
                    input_name = scr_get_input_name(4);
                    global.msg[0] = stringsetloc("* Susie's BUSTER^1, RUDE as may be^1.../", "scr_text_slash_scr_text_gml_1342_0");
                    global.msg[1] = stringsetsubloc("* Will deal more damage^1, if you just press [~1]!/%", input_name, "scr_text_slash_scr_text_gml_1343_0");
                }
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("* Susie loves^1, when you give us MONEY^1.&* She will -/", "scr_text_slash_scr_text_gml_1349_0");
                scr_susface(1, 0);
                global.msg[2] = stringsetloc("* Nope^1, don't care./", "scr_text_slash_scr_text_gml_1351_0");
                scr_noface(3);
                global.msg[4] = stringsetloc("\\M1* Did I say something funny!?/%", "scr_text_slash_scr_text_gml_1353_0");
                
                if (!scr_havechar(2))
                {
                    global.msg[0] = stringsetloc("* Susie's gone^1, so no facts./", "scr_text_slash_scr_text_gml_1356_0");
                    global.msg[1] = stringsetloc("* Will you two pick up the slackts?/%", "scr_text_slash_scr_text_gml_1357_0");
                }
                
                if (global.plot >= 150)
                {
                    global.msg[0] = stringsetloc("* SUSIE seems to have changed^1, just a hair./", "scr_text_slash_scr_text_gml_1361_0");
                    global.msg[1] = stringsetloc("* That kind of growth is actually rare./%", "scr_text_slash_scr_text_gml_1362_0");
                }
            }
            
            break;
        
        case 245:
            global.choicemsg[0] = stringsetloc(" #Reviving", "scr_text_slash_scr_text_gml_1374_0");
            global.choicemsg[1] = stringsetloc(" #Acting", "scr_text_slash_scr_text_gml_1375_0");
            global.choicemsg[2] = stringsetloc("Fact", "scr_text_slash_scr_text_gml_1376_0");
            global.choicemsg[3] = stringsetloc("Bye", "scr_text_slash_scr_text_gml_1377_0");
            global.msg[0] = stringsetloc("* I'm Kris Master^1.&* Ask me about KRIS's./", "scr_text_slash_scr_text_gml_1378_0");
            global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1379_0");
            break;
        
        case 246:
            global.msg[0] = stringsetloc("* Later^1, kid./%", "scr_text_slash_scr_text_gml_1383_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* When HP goes negative^1, your friends fall down/", "scr_text_slash_scr_text_gml_1386_0");
                global.msg[1] = stringsetloc("* But bringing them back^1, is easy-town/", "scr_text_slash_scr_text_gml_1387_0");
                global.msg[2] = stringsetloc("* Plain foods and spells^1, work like a charm -/", "scr_text_slash_scr_text_gml_1388_0");
                global.msg[3] = stringsetloc("* And with a MINT^1, you can cure all HARM./", "scr_text_slash_scr_text_gml_1389_0");
                scr_ralface(4, 0);
                global.msg[5] = stringsetloc("* Even normal items and spells can revive people^1, huh?/", "scr_text_slash_scr_text_gml_1391_0");
                scr_noface(6);
                global.msg[7] = stringsetloc("* Yeah^1, that's what I'm saying!/%", "scr_text_slash_scr_text_gml_1393_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("* If you only ACT^1, you might start to think -/", "scr_text_slash_scr_text_gml_1398_0");
                global.msg[1] = stringsetloc("* What about the guy with the scarf in pink?/", "scr_text_slash_scr_text_gml_1399_0");
                scr_ralface(2, 0);
                global.msg[3] = stringsetloc("* If you know ACTing will make the enemy friendly -/", "scr_text_slash_scr_text_gml_1401_0");
                global.msg[4] = stringsetloc("* Then you can ask me to SPARE on the SAME TURN./", "scr_text_slash_scr_text_gml_1402_0");
                global.msg[5] = stringsetloc("* Or^1, cast PACIFY if you know they'll get TIRED./", "scr_text_slash_scr_text_gml_1403_0");
                global.msg[6] = stringsetloc("* If you plan ahead^1, a lot can happen in ONE TURN!/", "scr_text_slash_scr_text_gml_1404_0");
                scr_noface(7);
                global.msg[8] = stringsetloc("\\M1* Hey^1, who's the MASTER here^1, me or you!?/%", "scr_text_slash_scr_text_gml_1406_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("* It's a good idea^1, to give us BUCKs./", "scr_text_slash_scr_text_gml_1410_0");
                global.msg[1] = stringsetloc("* It'll make you happy^1, and fill you with LUCKs./", "scr_text_slash_scr_text_gml_1411_0");
                global.msg[2] = stringsetloc("* Over there^1, is our DONATION HOLE./", "scr_text_slash_scr_text_gml_1412_0");
                global.msg[3] = stringsetloc("* We had a BOX^1, but it got STOLE./%", "scr_text_slash_scr_text_gml_1413_0");
            }
            
            break;
        
        case 250:
            global.choicemsg[0] = stringsetloc(" #Throw $1", "scr_text_slash_scr_text_gml_1418_0");
            global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1419_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1422_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1423_0_b");
            global.msg[0] = stringsetloc("* \"Donation Hole\"/", "scr_text_slash_scr_text_gml_1422_0");
            global.msg[1] = stringsetloc("* (If you like our tutorials^1, please throw your money into a hole.)/", "scr_text_slash_scr_text_gml_1423_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1424_0");
            
            if (global.flag[216] == 1)
                global.msg[0] = stringsetloc("* (The hole is filled to the brim with cash.)/%", "scr_text_slash_scr_text_gml_1427_0");
            
            break;
        
        case 251:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* (You put a dollar in the \"Hole.\")/", "scr_text_slash_scr_text_gml_1434_0");
                global.msg[1] = stringsetloc("* (The \"Hole\" became \"Full.\")/%", "scr_text_slash_scr_text_gml_1435_0");
                afford = 1;
                
                if (global.gold >= 1)
                    global.gold -= 1;
                else
                    afford = 0;
                
                if (afford == 1)
                    global.flag[216] = 1;
                
                if (afford == 0)
                {
                    global.msg[0] = stringsetloc("* (You don't have enough money.)/", "scr_text_slash_scr_text_gml_1441_0");
                    global.msg[1] = stringsetloc("* (You failed to budget enough money to throw into a hole...)/%", "scr_text_slash_scr_text_gml_1442_0");
                }
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (You decided to save the dollar for a different hole.)/%", "scr_text_slash_scr_text_gml_1447_0");
            
            break;
        
        case 255:
            global.choicemsg[0] = stringsetloc("Make#Ralsei#try it", "scr_text_slash_scr_text_gml_1452_0");
            global.choicemsg[1] = stringsetloc("#Try it", "scr_text_slash_scr_text_gml_1453_0");
            global.choicemsg[2] = stringsetloc("Decline", "scr_text_slash_scr_text_gml_1454_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1457_0");
            global.msg[0] = stringsetloc("* How's the evil scheming going?/", "scr_text_slash_scr_text_gml_1456_0");
            scr_susface(1, 6);
            global.msg[2] = stringsetloc("* Huh^1? Oh^1, that?/", "scr_text_slash_scr_text_gml_1458_0");
            global.msg[3] = stringsetloc("\\E2* We^1, uh^1, got bored^1.&* So we're having a snack./", "scr_text_slash_scr_text_gml_1459_0");
            scr_ralface(4, 1);
            global.msg[5] = stringsetloc("* ... I see./", "scr_text_slash_scr_text_gml_1461_0");
            scr_susface(6, 7);
            global.msg[7] = stringsetloc("* C'mon^1! All I ate for breakfast was chalk!/", "scr_text_slash_scr_text_gml_1463_0");
            scr_lanface(8, 3);
            global.msg[9] = stringsetloc("* And I didn't eat anything!/", "scr_text_slash_scr_text_gml_1465_0");
            scr_ralface(10, 6);
            global.msg[11] = stringsetloc("* Sorry^1. What are you two having^1, exactly...?/", "scr_text_slash_scr_text_gml_1467_0");
            scr_lanface(12, 2);
            global.msg[13] = stringsetloc("* Just a daily treasure I hid in this stump's orifice./", "scr_text_slash_scr_text_gml_1469_0");
            scr_ralface(14, 8);
            global.msg[15] = stringsetloc("* And that is...?/", "scr_text_slash_scr_text_gml_1471_0");
            scr_lanface(16, 1);
            global.msg[17] = stringsetloc("* Feast for yourself^1, my main man./", "scr_text_slash_scr_text_gml_1473_0");
            scr_ralface(18, 8);
            global.msg[19] = stringsetloc("* Kris^1, do you want to^1, um^1, try it?/", "scr_text_slash_scr_text_gml_1475_0");
            global.msg[20] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_1476_0");
            break;
        
        case 256:
            global.flag[232] = 1;
            
            if (global.choice == 0)
            {
                scr_ralface(0, 6);
                global.msg[1] = stringsetloc("\\E6* Oh^1, there's a..^1.&* Honeypot^1? Inside^1?/", "scr_text_slash_scr_text_gml_1489_0");
                global.msg[2] = stringsetloc("\\E1* ... It's full of salsa./", "scr_text_slash_scr_text_gml_1490_0");
                scr_lanface(3, 3);
                global.msg[4] = stringsetloc("\\E3* Bingo^1, you sweet little pumpkin!/", "scr_text_slash_scr_text_gml_1492_0");
                global.msg[5] = stringsetloc("\\E1* It's my secret stash^1.&* A little snackeroo from me to you.../", "scr_text_slash_scr_text_gml_1493_0");
                scr_ralface(6, 1);
                global.msg[7] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_1495_0");
                global.msg[8] = stringsetloc("\\E8* Mmmm^1. Yummy^1. It's delicious.../", "scr_text_slash_scr_text_gml_1496_0");
                scr_susface(9, 7);
                global.msg[10] = stringsetloc("* C'mon^1, you're just pretending to eat it!/", "scr_text_slash_scr_text_gml_1498_0");
                scr_lanface(11, 3);
                global.msg[12] = stringsetloc("* Haha^1, yeah^1! That's what I do^1, too!/", "scr_text_slash_scr_text_gml_1500_0");
                scr_susface(13, 6);
                global.msg[14] = stringsetloc("* ?????/%", "scr_text_slash_scr_text_gml_1502_0");
            }
            
            if (global.choice == 1)
            {
                scr_noface(0);
                global.msg[1] = stringsetloc("* (There was a honeypot of salsa inside the stump.)/", "scr_text_slash_scr_text_gml_1508_0");
                global.msg[2] = stringsetloc("* (You ate some salsa.)/", "scr_text_slash_scr_text_gml_1509_0");
                global.msg[3] = stringsetloc("* (It recovered... something.)/", "scr_text_slash_scr_text_gml_1510_0");
                global.msg[4] = stringsetloc("* (Not HP.^1)&* (Just... something.)/", "scr_text_slash_scr_text_gml_1511_0");
                scr_susface(5, 2);
                global.msg[6] = stringsetloc("\\E2* Mmm..^1.&* Hey^1, what's in this?/", "scr_text_slash_scr_text_gml_1513_0");
                scr_lanface(7, 3);
                global.msg[8] = stringsetloc("* I don't know!/%", "scr_text_slash_scr_text_gml_1515_0");
            }
            
            if (global.choice == 2)
            {
                scr_susface(0, 2);
                global.msg[1] = stringsetloc("* Look^1, if no one else will eat it^1, I'll try it!/", "scr_text_slash_scr_text_gml_1522_0");
                global.msg[2] = stringsetloc("\\E6* ... there's a jar of..^1. Blood...^1?&* In here./", "scr_text_slash_scr_text_gml_1523_0");
                scr_lanface(3, 3);
                global.msg[4] = stringsetloc("* No^1, no^1.&* It's merely a pot of free-range salsa./", "scr_text_slash_scr_text_gml_1525_0");
                scr_susface(5, 2);
                global.msg[6] = stringsetloc("\\E2* Thanks^1, that's actually more gross somehow./", "scr_text_slash_scr_text_gml_1527_0");
                scr_lanface(7, 3);
                global.msg[8] = stringsetloc("\\E3* Any time!/", "scr_text_slash_scr_text_gml_1529_0");
                scr_susface(9, 2);
                global.msg[10] = stringsetloc("\\E2* Mmm..^1.&* Hey^1, what's in this?/", "scr_text_slash_scr_text_gml_1531_0");
                scr_lanface(11, 3);
                global.msg[12] = stringsetloc("* I don't know!/%", "scr_text_slash_scr_text_gml_1533_0");
            }
            
            break;
        
        case 270:
            addflag = 0;
            
            if (global.flag[267] == -10)
            {
                global.msg[0] = stringsetloc("\\E5* Kris...?/%", "scr_text_slash_scr_text_gml_1551_0");
                addflag = 1;
            }
            
            if (global.flag[267] == 0)
            {
                global.msg[0] = stringsetloc("\\E0* Kris^1, honey^1, you have grown up so much.../", "scr_text_slash_scr_text_gml_1560_0");
                global.msg[1] = stringsetloc("\\E9* Someday soon you will be going off to university as well.../", "scr_text_slash_scr_text_gml_1561_0");
                global.msg[2] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_1562_0");
                global.msg[3] = stringsetloc("\\E9* Remember when you were little.../", "scr_text_slash_scr_text_gml_1563_0");
                global.msg[4] = stringsetloc("\\E8* You asked when your horns were going to grow in?/", "scr_text_slash_scr_text_gml_1564_0");
                global.msg[5] = stringsetloc("\\E0* So we bought that headband with the little red horns on it./", "scr_text_slash_scr_text_gml_1565_0");
                global.msg[6] = stringsetloc("\\E4* Oh^1, you wore it for months! Whatever happened to it?/%", "scr_text_slash_scr_text_gml_1566_0");
                addflag = 1;
            }
            
            if (global.flag[267] == 1)
            {
                global.msg[0] = stringsetloc("\\E2* Kris^1, I need to grade these assignments./", "scr_text_slash_scr_text_gml_1575_0");
                global.msg[1] = stringsetloc("\\E0* Perhaps you should go to bed...?/", "scr_text_slash_scr_text_gml_1576_0");
                global.msg[2] = stringsetloc("\\E1* You do not look very well.../%", "scr_text_slash_scr_text_gml_1577_0");
            }
            
            if (addflag == 1)
                global.flag[267] += 1;
            
            break;
        
        case 285:
            global.choicemsg[0] = stringsetloc(" #Flowers", "scr_text_slash_scr_text_gml_1587_0");
            global.choicemsg[1] = stringsetloc(" #Saucer", "scr_text_slash_scr_text_gml_1588_0");
            global.choicemsg[2] = stringsetloc("Chalk", "scr_text_slash_scr_text_gml_1589_0");
            global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_1590_0");
            global.msg[0] = stringsetloc("* O..^1. Oh^1, Kris.../", "scr_text_slash_scr_text_gml_1591_0");
            global.msg[1] = stringsetloc("\\E4* D..^1. Did you want to talk about something?/", "scr_text_slash_scr_text_gml_1592_0");
            global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_1593_0");
            break;
        
        case 286:
            global.msg[0] = stringsetloc("* Huh?/%", "scr_text_slash_scr_text_gml_1597_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E3* O-Oh^1, these flowers...^1? They're from your dad.../", "scr_text_slash_scr_text_gml_1600_0");
                global.msg[1] = stringsetloc("\\E0* He..^1. He always asks how you're doing in school.../", "scr_text_slash_scr_text_gml_1601_0");
                global.msg[2] = stringsetloc("\\E7* ... Then gives me a bouquet of them./", "scr_text_slash_scr_text_gml_1602_0");
                global.msg[3] = stringsetloc("\\E1* ... A-actually^1, that he always gives me flowers.../", "scr_text_slash_scr_text_gml_1603_0");
                global.msg[4] = stringsetloc("\\E4* ... R-really makes me w-wonder if he..^1. If he l-likes.../", "scr_text_slash_scr_text_gml_1604_0");
                global.msg[5] = stringsetloc("\\EB* I-if..^1. If he l-likes.../", "scr_text_slash_scr_text_gml_1605_0");
                global.msg[6] = stringsetloc("\\EA* ... The awesome comics I lent to him./", "scr_text_slash_scr_text_gml_1606_0");
                global.msg[7] = stringsetloc("\\EB* Honestly^1, HE kind of reminds me of a superhero^1, Kris./", "scr_text_slash_scr_text_gml_1607_0");
                global.msg[8] = stringsetloc("\\EA* (He's huge and could kick my ass.)/%", "scr_text_slash_scr_text_gml_1608_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E0* Oh^1, this saucer of milk?/", "scr_text_slash_scr_text_gml_1612_0");
                global.msg[1] = stringsetloc("\\E7* I-It's for my kitty^1, MewMew^1! She's a perfect angel!/", "scr_text_slash_scr_text_gml_1613_0");
                global.msg[2] = stringsetloc("\\E3* ... uh^1? What does she look like...?/", "scr_text_slash_scr_text_gml_1614_0");
                global.msg[3] = stringsetloc("\\E9* W..^1. well, I've never actually s-seen her^1, b-but.../", "scr_text_slash_scr_text_gml_1615_0");
                global.msg[4] = stringsetloc("\\E7* Ever since I started putting out milk^1, it's been disappearing./", "scr_text_slash_scr_text_gml_1616_0");
                global.msg[5] = stringsetloc("\\E6* S..^1. So I'd like to think that there's a cat./", "scr_text_slash_scr_text_gml_1617_0");
                global.msg[6] = stringsetloc("\\E9* M.^1.. My cat./%", "scr_text_slash_scr_text_gml_1618_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E0* K..^1. Kris^1, even though you never got the chalk.../", "scr_text_slash_scr_text_gml_1625_0");
                global.msg[1] = stringsetloc("\\E0* You deserve an award for trying so hard to find it./", "scr_text_slash_scr_text_gml_1626_0");
                global.msg[2] = stringsetloc("\\E3* So^1, in return^1, I can let you borrow^1, um.../", "scr_text_slash_scr_text_gml_1627_0");
                global.msg[3] = stringsetloc("\\E0* M... My home-made DVD collection of the Symptons!/", "scr_text_slash_scr_text_gml_1628_0");
                global.msg[4] = stringsetloc("\\E7* Y-you know, the sitcom about the middle-class monster family./", "scr_text_slash_scr_text_gml_1629_0");
                global.msg[5] = stringsetloc("\\E3* It's got every episode in all 28 seasons!/", "scr_text_slash_scr_text_gml_1630_0");
                global.msg[6] = stringsetloc("\\E0* It's the funniest^1, most quotable show ever...!/", "scr_text_slash_scr_text_gml_1631_0");
                global.msg[7] = stringsetloc("\\E3* But make sure you don't watch past the second season %", "scr_text_slash_scr_text_gml_1632_0");
                global.msg[8] = stringsetloc("\\E9* Since they just rebooted it as Symptons Turbo %", "scr_text_slash_scr_text_gml_1633_0");
                global.msg[9] = stringsetloc("\\E8* They all started driving their own motor-vehicles %", "scr_text_slash_scr_text_gml_1634_0");
                global.msg[10] = stringsetloc("\\E3* And fighting giant giga-demons and stuff %", "scr_text_slash_scr_text_gml_1635_0");
                global.msg[11] = stringsetloc("\\E9* The main problem about that is that it kind of %", "scr_text_slash_scr_text_gml_1636_0");
                global.msg[12] = stringsetloc("\\E6* Lost the focus on family that it had earlier %", "scr_text_slash_scr_text_gml_1637_0");
                global.msg[13] = stringsetloc("\\E7* When their vehicles were shaped like animals %", "scr_text_slash_scr_text_gml_1638_0");
                global.msg[14] = stringsetloc("\\E5* And they were friends with the animal vehicles too %", "scr_text_slash_scr_text_gml_1639_0");
                global.msg[15] = stringsetloc("\\E3* And let's not get into Symptons Galaxy Force %", "scr_text_slash_scr_text_gml_1640_0");
                global.msg[16] = stringsetloc("\\E8* Where the Symptons discover another Earth %", "scr_text_slash_scr_text_gml_1641_0");
                global.msg[17] = stringsetloc("\\E9* On the other side of the Sun %", "scr_text_slash_scr_text_gml_1642_0");
                global.msg[18] = stringsetloc("\\E6* WOULDN'T THE GRAVITATIONAL FIELD JUST %", "scr_text_slash_scr_text_gml_1643_0");
                global.msg[19] = stringsetloc("\\E1* ... Huh?/", "scr_text_slash_scr_text_gml_1644_0");
                global.msg[20] = stringsetloc("\\E2* ... You don't want to watch it?/", "scr_text_slash_scr_text_gml_1645_0");
                global.msg[21] = stringsetloc("\\EB* ... Th-That's ok^1, Kris.../%", "scr_text_slash_scr_text_gml_1646_0");
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E1* OK^1, umm^1, if you ever need help with homework.../", "scr_text_slash_scr_text_gml_1651_0");
                global.msg[1] = stringsetloc("\\EA* My office hours are in this disgusting alley./", "scr_text_slash_scr_text_gml_1652_0");
                global.msg[2] = stringsetloc("\\EB* H..^1. Heheheh..^1. Umm^1, tell your mom I said hi./%", "scr_text_slash_scr_text_gml_1653_0");
            }
            
            break;
        
        case 290:
            global.choicemsg[0] = stringsetloc(" #Add Spade", "scr_text_slash_scr_text_gml_1659_0");
            global.choicemsg[1] = stringsetloc(" #Add Diamond", "scr_text_slash_scr_text_gml_1660_0");
            global.choicemsg[2] = stringsetloc("Swap", "scr_text_slash_scr_text_gml_1661_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1664_0");
            global.msg[0] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_1663_0");
            global.msg[1] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1666_0");
            break;
        
        case 291:
            if (global.choice == 0)
            {
                with (obj_suitspuzz)
                    event_user(2);
            }
            
            if (global.choice == 1)
            {
                with (obj_suitspuzz)
                    event_user(3);
            }
            
            if (global.choice == 2)
            {
                with (obj_suitspuzz)
                    event_user(4);
            }
            
            global.msg[0] = stringsetloc(" %%", "scr_text_slash_scr_text_gml_1682_0");
            break;
        
        case 295:
            global.choicemsg[0] = stringsetloc(" #Perpetuate", "scr_text_slash_scr_text_gml_1684_0");
            global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1685_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1688_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1689_0_b");
            global.msg[0] = stringsetloc("* (Life cannot exist without consuming.^1)&* (Even the moss drinks water.)/", "scr_text_slash_scr_text_gml_1688_0");
            global.msg[1] = stringsetloc("* (Perpetuate the cycle of existence?)/", "scr_text_slash_scr_text_gml_1689_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1690_0");
            global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1693_0");
            
            if (global.flag[106] == 1)
                global.msg[0] = "* (Regardless of whether or not the moss is consumed, the cycle continues...)/%";
            
            break;
        
        case 296:
            if (global.choice == 0)
            {
            
                global.msg[0] = string("* (As your hands touched it^1, the moss turned into {0}./%", scr_ap_get_location_reward_text(35));
                global.flag[106] = 1;
                scr_checkspot(35);
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (The cycle ends here^1, in the corner of a small cell...)/%", "scr_text_slash_scr_text_gml_1709_0");
            
            break;
        
        case 300:
            global.choicemsg[0] = stringsetloc(" #Take", "scr_text_slash_scr_text_gml_1714_0");
            global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1715_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1718_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1719_0_b");
            global.msg[0] = stringsetloc("* (These shackles seem oddly fashionable.)/", "scr_text_slash_scr_text_gml_1718_0");
            global.msg[1] = stringsetloc("* (Take them?)/", "scr_text_slash_scr_text_gml_1719_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1720_0");
            global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1723_0");
            
            if (global.flag[105] == 1)
                global.msg[0] = stringsetloc("* (Ain't nothin' to hold you down...)/%", "scr_text_slash_scr_text_gml_1724_0");
            
            break;
        
        case 301:
            if (global.choice == 0)
            {
                scr_checkspot(30);
                
                if (noroom == 1)
                {
                    global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1733_0");
                }
                else
                {
                    with (obj_npc_sign)
                        image_index = 1;
                    
                    global.msg[0] = string("* (As touched it^1, it turned into {0}./%", scr_ap_get_location_reward_text(30));
                    global.flag[105] = 1;
                }
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (Don't need nothin' to hold you down...)/%", "scr_text_slash_scr_text_gml_1745_0");
            
            break;
        
        case 305:
            global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_1750_0");
            global.choicemsg[1] = stringsetloc(" #She'll be#fine", "scr_text_slash_scr_text_gml_1751_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1754_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1755_0_b");
            global.msg[0] = stringsetloc("\\E6* ... thanks for helping her^1, Kris^1. She appreciates it./", "scr_text_slash_scr_text_gml_1754_0");
            global.msg[1] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_1755_0");
            global.msg[2] = stringsetloc("\\E1* Kris.../", "scr_text_slash_scr_text_gml_1756_0");
            global.msg[3] = stringsetloc("\\E6* Are you worried about Susie?/", "scr_text_slash_scr_text_gml_1757_0");
            global.msg[4] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1758_0");
            global.msg[5] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1761_0");
            break;
        
        case 306:
            global.msg[0] = stringsetloc("\\E6* Well, regardless of how you feel.../", "scr_text_slash_scr_text_gml_1763_0");
            global.msg[1] = stringsetloc("\\E0* I don't think it would hurt to take a moment.../", "scr_text_slash_scr_text_gml_1764_0");
            global.msg[2] = stringsetloc("\\E6* Close your eyes^1, and think about what she's doing now.../%", "scr_text_slash_scr_text_gml_1765_0");
            break;
        
        case 310:
            global.choicemsg[0] = stringsetloc(" #Go Left", "scr_text_slash_scr_text_gml_1769_0");
            global.choicemsg[1] = stringsetloc(" #Go Right", "scr_text_slash_scr_text_gml_1770_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1773_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1774_0_b");
            global.msg[0] = stringsetloc("\\E0* (Alright..^1. out of the cell...)/", "scr_text_slash_scr_text_gml_1773_0");
            global.msg[1] = stringsetloc("* (Where to next...?)/", "scr_text_slash_scr_text_gml_1774_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1775_0");
            global.msg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1778_0");
            global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1779_0");
            break;
        
        case 311:
            global.msg[0] = stringsetloc("\\E9* Huh...? Kris...^1? Did you say something back there?/", "scr_text_slash_scr_text_gml_1781_0");
            global.msg[1] = stringsetloc("\\E0* (... I can't hear them anymore...)/%", "scr_text_slash_scr_text_gml_1782_0");
            break;
        
        case 315:
            global.choicemsg[0] = stringsetloc(" #Fix Item", "scr_text_slash_scr_text_gml_1786_0");
            global.choicemsg[1] = stringsetloc(" #Leave", "scr_text_slash_scr_text_gml_1787_0");
            global.choicemsg[2] = stringsetloc("Fix Us", "scr_text_slash_scr_text_gml_1788_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1791_0_b");
            global.msg[0] = stringsetloc("* Well^1, well^1. I am the smith Malius^1. I can fix anything^1. Weapon, armor.../", "scr_text_slash_scr_text_gml_1790_0");
            global.msg[1] = stringsetloc("* ... I can even fix you^1! Well^1, well^1, what will it be?/", "scr_text_slash_scr_text_gml_1791_0");
            global.msg[2] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_1792_0");
            break;
        
        case 316:
            global.msg[0] = stringsetloc("* Hm^1? What is it now?/%", "scr_text_slash_scr_text_gml_1796_0");
            
            if (global.choice == 0)
            {
                which = 0;
                
                if (global.customflags[6] == 3 && scr_keyitemcheck(4))
                    which = 3;
                
                if (scr_keyitemcheck(3) && which == 0)
                {
                    which = 1;

                }
                
                if (which == 0)
                {
                    global.msg[0] = stringsetloc("* Well^1, well^1. You have nothing to fix^1./", "scr_text_slash_scr_text_gml_1813_0");
                    global.msg[1] = stringsetloc("* But if you find anything BROKEN^1, return here./", "scr_text_slash_scr_text_gml_1814_0");
                    global.msg[2] = stringsetloc("* After all^1, I can fix anything.../", "scr_text_slash_scr_text_gml_1815_0");
                    global.msg[3] = stringsetloc("* ... except for a BROKEN HEART./%", "scr_text_slash_scr_text_gml_1816_0");
                }
                
                if (which == 1)
                {
                    global.msg[0] = stringsetloc("* Huh---^1! That CAKE is seething with energy^1! You must let me fix it!/", "scr_text_slash_scr_text_gml_1821_0");
                    global.msg[1] = stringsetloc("* Huh-hah^1! Let's feel my technique!/%", "scr_text_slash_scr_text_gml_1822_0");
                    
                    with (obj_npc_hammerguy)
                        con = 30;
                }
                
                if (which == 2)
                {
                    global.msg[0] = stringsetloc("* Huh---^1! That CAKE is seething with energy^1! You must let me fix it!/", "scr_text_slash_scr_text_gml_1828_0");
                    global.msg[1] = stringsetloc("* ... actually^1, you will need a free space in your ITEMs first./%", "scr_text_slash_scr_text_gml_1829_0");
                }
                
                if (which == 3)
                {
                    global.msg[0] = stringsetloc("* Huh---^1! That KEY is seething with energy^1! You must let me fix it!/", "scr_text_slash_scr_text_gml_1834_0");
                    global.msg[1] = stringsetloc("* Huh-hah^1! Let's feel my technique!/%", "scr_text_slash_scr_text_gml_1835_0");
                    
                    with (obj_npc_hammerguy)
                        con = 50;
                }
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* Well^1, well^1. Good journey^1, my friends./%", "scr_text_slash_scr_text_gml_1842_0");
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("* Your body is a weapon^1, too^1. You must take care of it from time to time./", "scr_text_slash_scr_text_gml_1846_0");
                global.msg[1] = stringsetloc("* Huh-hah^1! Let's feel my technique./%", "scr_text_slash_scr_text_gml_1847_0");
                
                with (obj_npc_hammerguy)
                    con = 10;
            }
            
            break;
        
        case 325:
            if (global.customflags[7] == 1)
            {
                global.msg[0] = "* Thanks for buying, I guess./%";
            }
            else
            {
                global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1853_0");
                global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1854_0");
                global.choicemsg[2] = " ";
                global.choicemsg[3] = " ";
                global.msg[0] = string("* Interested in {0}^1? /", scr_ap_get_location_reward_text(7));
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1858_0");
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1859_0");
                global.msg[3] = " ";
                scr_hintspot(7);
            }
            
            break;
        
        case 326:
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_checkspot(7);
                    global.customflags[7] = 1;
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.msg[0] = "* Thanks^1, I guess/%";
                    }
                    else
                    {
                        global.msg[0] = stringsetloc("* ... You have too many ITEMS for this^1, I guess./%", "scr_text_slash_scr_text_gml_1882_0");
                    }
                }
                else
                {
                    global.msg[0] = stringsetloc("* You don't have enough money^1, I guess./%", "scr_text_slash_scr_text_gml_1887_0");
                }
            }
            else
            {
                global.msg[0] = stringsetloc("* Okay I guess./%", "scr_text_slash_scr_text_gml_1892_0");
            }
            
            break;
        
        case 327:
            if (global.customflags[8] == 1)
            {
                global.msg[0] = "* (Hathy seems grateful of your purchase.)/%";
                break;
            }
            else
            {
                global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1900_0");
                global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1901_0");
                global.choicemsg[2] = " ";
                global.choicemsg[3] = " ";
                global.msg[0] = string("* (Hathy offers {0}.^1)/", scr_ap_get_location_reward_text(8));
                global.msg[1] = "* (Proceeds go to Hathy's Health. It costs $40.)/"
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1905_0");
                scr_hintspot(8);
                break;
            }
        
        case 328:
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_checkspot(8);
                    global.customflags[8] = 1;
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.msg[0] = "* (Hathy seems happy of your purchase.)/%";
                    }
                    else
                    {
                        global.msg[0] = stringsetloc("* (You didn't have enough room in your ITEMs.^1)&* (Hathy seemed sad.)/%", "scr_text_slash_scr_text_gml_1923_0");
                    }
                }
                else
                {
                    global.msg[0] = stringsetloc("* (You didn't have enough money.^1)&* (Hathy seemed sad.)/%", "scr_text_slash_scr_text_gml_1928_0");
                }
            }
            else
            {
                global.msg[0] = stringsetloc("* (Hathy accepted your choice.)/%", "scr_text_slash_scr_text_gml_1933_0");
            }
            
            break;
        
        case 330:
            global.choicemsg[0] = stringsetloc(" #Buy", "scr_text_slash_scr_text_gml_1939_0");
            global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_1940_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1943_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1944_0");
            global.fc = 5;
            global.typer = 32;
            global.fe = 2;
            global.msg[0] = stringsetloc("* Greetings^1, gentleclowns./", "scr_text_slash_scr_text_gml_1946_0");
            global.msg[1] = string("\\E1* May we interest you in {0}?/", scr_ap_get_location_reward_text(9));
            scr_susface(2, 2);
            global.msg[3] = stringsetloc("* All proceeds go to kicking your ass./", "scr_text_slash_scr_text_gml_1949_0");
            scr_lanface(4, 3);
            global.msg[5] = stringsetloc("* It's a mere $40./", "scr_text_slash_scr_text_gml_1953_0");
            global.msg[6] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_1952_0");
            global.msg[7] = stringsetloc(" ", "scr_text_slash_scr_text_gml_1955_0");
            scr_hintspot(9);
            break;
        
        case 331:
            if (global.choice == 0)
            {
                if (global.gold >= 40)
                {
                    scr_checkspot(9);
                    
                    if (noroom == 0)
                    {
                        global.gold -= 40;
                        global.fc = 1;
                        global.fe = 1;
                        global.typer = 30;
                        global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1968_0");
                        scr_noface(1);
                        scr_susface(3, 2);
                        global.msg[4] = stringsetloc("\\E2* For getting CHEATED by us!!/", "scr_text_slash_scr_text_gml_1973_0");
                        scr_lanface(5, 1);
                        global.msg[6] = stringsetloc("* Now we may fund our illicit plans!!/%", "scr_text_slash_scr_text_gml_1975_0");
                        
                        with (obj_lancerbakesale_event)
                            con = 10;
                    }
                    else
                    {
                        global.gold -= 40;
                        global.fc = 0;
                        global.fe = 0;
                        global.typer = 6;
                        global.msg[0] = stringsetloc("* (You bought LANCERCOOKIE.^1)&* (But you didn't have any room.)/", "scr_text_slash_scr_text_gml_1985_0");
                        global.msg[1] = stringsetloc("* (So Lancer just dropped it on the ground and it broke.)/", "scr_text_slash_scr_text_gml_1986_0");
                        scr_lanface(2, 7);
                        global.msg[3] = stringsetloc("* Oops./", "scr_text_slash_scr_text_gml_1988_0");
                        scr_susface(4, 2);
                        global.msg[5] = stringsetloc("* Oh well^1. Buyers cryers./", "scr_text_slash_scr_text_gml_1990_0");
                        scr_lanface(6, 3);
                        global.msg[7] = stringsetloc("* Thank you anyway for your contribution.../", "scr_text_slash_scr_text_gml_1992_0");
                        scr_susface(8, 2);
                        global.msg[9] = stringsetloc("* ... to getting SWINDLED by us!/", "scr_text_slash_scr_text_gml_1994_0");
                        scr_lanface(10, 2);
                        global.msg[11] = stringsetloc("* Now we can fund our illicit plans!!!/%", "scr_text_slash_scr_text_gml_1996_0");
                        
                        with (obj_lancerbakesale_event)
                            con = 10;
                    }
                }
                else
                {
                    global.typer = 32;
                    global.fe = 6;
                    global.fc = 5;
                    global.msg[0] = stringsetloc("* ... You don't have enough funds./", "scr_text_slash_scr_text_gml_2007_0");
                    scr_susface(1, 0);
                    global.msg[2] = stringsetloc("* What^1? What did you spend it on!^1? Pastries!?/", "scr_text_slash_scr_text_gml_2009_0");
                    scr_lanface(3, 6);
                    global.msg[4] = stringsetloc("* That's irresponsible./%", "scr_text_slash_scr_text_gml_2011_0");
                }
            }
            else
            {
                global.typer = 32;
                global.fc = 5;
                global.fe = 2;
                global.msg[0] = stringsetloc("* Hey^1! You can't not buy from us!/", "scr_text_slash_scr_text_gml_2019_0");
                scr_susface(1, 2);
                global.msg[2] = stringsetloc("* Hey DUMBASS^1!&* It's for a GOOD CAUSE!/", "scr_text_slash_scr_text_gml_2021_0");
                scr_ralface(3, 6);
                global.msg[4] = stringsetloc("* (Let's just buy one^1, Kris.)/%", "scr_text_slash_scr_text_gml_2023_0");
            }
            
            break;
        
        case 335:
            global.choicemsg[0] = stringsetloc("#Alphys", "scr_text_slash_scr_text_gml_2028_0");
            global.choicemsg[1] = stringsetloc("#Dark World", "scr_text_slash_scr_text_gml_2029_0");
            global.choicemsg[2] = stringsetloc("Help you", "scr_text_slash_scr_text_gml_2030_0");
            global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_2031_0");
            global.fe = 2;
            global.fc = 9;
            global.msg[0] = stringsetloc("\\E2* HEY^1, PUNK!!^1!&* GET OUT OF THE ROAD!!!/", "scr_text_slash_scr_text_gml_2034_0");
            global.msg[1] = stringsetloc("* YOU'RE BLOCKIN' TRAFFIC!!!!/", "scr_text_slash_scr_text_gml_2035_0");
            global.msg[2] = stringsetloc("\\E1* ... Oh^1, wait^1, it's just Asgore's kid./", "scr_text_slash_scr_text_gml_2036_0");
            global.msg[3] = stringsetloc("\\E7* Sorry^1, I'm a little^1, uh^1, worked up lately./", "scr_text_slash_scr_text_gml_2037_0");
            global.msg[4] = stringsetloc("\\E2* This job is SO boring^1.&* Nothing EVER happens in this town!/", "scr_text_slash_scr_text_gml_2038_0");
            global.msg[5] = stringsetloc("\\E4* Ngh..^1. I just wish SOMETHING would shake things up!/", "scr_text_slash_scr_text_gml_2039_0");
            global.msg[6] = stringsetloc("\\E7* ... Huh^1?&* You got somethin' to report?/", "scr_text_slash_scr_text_gml_2040_0");
            global.msg[7] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2041_0");
            
            if (global.flag[270] >= 1)
            {
                global.fe = 1;
                global.msg[0] = stringsetloc("\\E1* Got somethin' to report?/", "scr_text_slash_scr_text_gml_2045_0");
                global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2046_0");
            }
            
            global.flag[270] = 1;
            break;
        
        case 336:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E0* ... Alphys?/", "scr_text_slash_scr_text_gml_2054_0");
                global.msg[1] = stringsetloc("\\E3* Who's Alphys^1?&* No idea who you're talking about./", "scr_text_slash_scr_text_gml_2055_0");
                global.msg[2] = stringsetloc("\\E2* ... Why^1, did they do something illegal!?/", "scr_text_slash_scr_text_gml_2056_0");
                global.msg[3] = stringsetloc("\\E5* Gotcha^1, if I see \"Alphys^1,\" I'll tackle 'em!!/", "scr_text_slash_scr_text_gml_2057_0");
                global.msg[4] = stringsetloc("* Fuhuhuhu!^1!&* They're as good as dead!!/%", "scr_text_slash_scr_text_gml_2058_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E1* What^1?&* There's a Dark World inside the school?/", "scr_text_slash_scr_text_gml_2062_0");
                global.msg[1] = stringsetloc("\\E2* Uh..^1. SURE^1, kid./", "scr_text_slash_scr_text_gml_2063_0");
                global.msg[2] = stringsetloc("\\E5* There's no law against Dark Worlds anyway!/", "scr_text_slash_scr_text_gml_2064_0");
                global.msg[3] = stringsetloc("* That's a job for the school board!/%", "scr_text_slash_scr_text_gml_2065_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E6* Aww^1, you wanna help me^1? Sure^1, punk./", "scr_text_slash_scr_text_gml_2069_0");
                global.msg[1] = stringsetloc("\\E5* Get someone to rob the bank so I can suplex them!/", "scr_text_slash_scr_text_gml_2070_0");
                global.msg[2] = stringsetloc("\\E1* ... wait^1, do we even have a bank?/", "scr_text_slash_scr_text_gml_2071_0");
                global.msg[3] = stringsetloc("\\E5* Hey^1, get someone to build a bank...!/%", "scr_text_slash_scr_text_gml_2072_0");
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E6* Don't do anything illegal^1, you little punk~!/", "scr_text_slash_scr_text_gml_2076_0");
                global.msg[1] = stringsetloc("\\E3* And lemme know if you get a lead on any purple girls./", "scr_text_slash_scr_text_gml_2077_0");
                global.msg[2] = stringsetloc("\\E4* There's one wanted on SEVERAL counts of Comic Mischief./%", "scr_text_slash_scr_text_gml_2078_0");
            }
            
            break;
        
        case 340:
            global.choicemsg[0] = stringsetloc("#Asriel", "scr_text_slash_scr_text_gml_2083_0");
            global.choicemsg[1] = stringsetloc("#Job", "scr_text_slash_scr_text_gml_2084_0");
            global.choicemsg[2] = stringsetloc("Co-Workers", "scr_text_slash_scr_text_gml_2085_0");
            global.choicemsg[3] = stringsetloc("No", "scr_text_slash_scr_text_gml_2086_0");
            global.fe = 0;
            global.fc = 19;
            global.msg[0] = stringsetloc("\\E0* Little buddy^1!&* It's me!/", "scr_text_slash_scr_text_gml_2089_0");
            global.msg[1] = stringsetloc("\\E3* Wanna chat for a minute before I lose my mind?/", "scr_text_slash_scr_text_gml_2090_0");
            global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2091_0");
            
            if (global.flag[271] > 1)
            {
                global.msg[0] = stringsetloc("\\E0* H... Hey!&* Hey little buddy^1!&* What's up?!/", "scr_text_slash_scr_text_gml_2094_0");
                global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2095_0");
            }
            
            global.flag[271] = 2;
            break;
        
        case 341:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E0* Do you know when Azzy's coming home?/", "scr_text_slash_scr_text_gml_2103_0");
                global.msg[1] = stringsetloc("\\E8* Y..^1. You can't tell him this^1, but I really miss the guy./", "scr_text_slash_scr_text_gml_2104_0");
                global.msg[2] = stringsetloc("\\E8* It'd be sweet to cruise around town like old times.../", "scr_text_slash_scr_text_gml_2105_0");
                global.msg[3] = stringsetloc("\\E3* Picking up^1, for example.../", "scr_text_slash_scr_text_gml_2106_0");
                global.msg[4] = stringsetloc("\\E4* CHICKS/", "scr_text_slash_scr_text_gml_2107_0");
                global.msg[5] = stringsetloc("\\E5* Which^1, as a matter of course/", "scr_text_slash_scr_text_gml_2108_0");
                global.msg[6] = stringsetloc("\\E6* May not have ever actually happened./", "scr_text_slash_scr_text_gml_2109_0");
                global.msg[7] = stringsetloc("\\E2* B-but one time Undyne made eye contact with me!/", "scr_text_slash_scr_text_gml_2110_0");
                global.msg[8] = stringsetloc("\\E7* ... while she was writing me a speeding ticket./%", "scr_text_slash_scr_text_gml_2111_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E1* Make no mistake^1, little buddy./", "scr_text_slash_scr_text_gml_2115_0");
                global.msg[1] = stringsetloc("\\E2* ICE-E's P\"E\"ZZA is H\"E\"LL./", "scr_text_slash_scr_text_gml_2116_0");
                global.msg[2] = stringsetloc("\\E0* I can't slack off for SECONDS without hearing.../", "scr_text_slash_scr_text_gml_2117_0");
                global.msg[3] = stringsetloc("\\E3* \"Be a team player^1, there's no I in PEZZA!\"/", "scr_text_slash_scr_text_gml_2118_0");
                global.msg[4] = stringsetloc("\\E2* YES THERE IS^1.&* YOU JUST TOOK IT OUT./", "scr_text_slash_scr_text_gml_2119_0");
                global.msg[5] = stringsetloc("\\E3* But it's OK^1, little buddy^1.&* I've been saving up.../", "scr_text_slash_scr_text_gml_2120_0");
                global.msg[6] = stringsetloc("\\E8* ... To go to college where Azzy is!/", "scr_text_slash_scr_text_gml_2121_0");
                global.msg[7] = stringsetloc("\\E5* Then I'll get a theater degree^1, become a famous actor.../", "scr_text_slash_scr_text_gml_2122_0");
                global.msg[8] = stringsetloc("\\E1* And let the fangirls roll in, little buddy./%", "scr_text_slash_scr_text_gml_2123_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E1* Ah^1, yes^1, Little Buddy^1. Good idea^1. Meet the Rogue's Gallery./", "scr_text_slash_scr_text_gml_2128_0");
                global.msg[1] = stringsetloc("\\E3* Blue Ears - Soft serve obsessed^1, no concept of personal space./", "scr_text_slash_scr_text_gml_2129_0");
                global.msg[2] = stringsetloc("\\E2* Keeps accidentally pouring slushies on me and giggling./", "scr_text_slash_scr_text_gml_2130_0");
                global.msg[3] = stringsetloc("\\E1* The Warrior - Thankfully absent due to pizza-related injuries./", "scr_text_slash_scr_text_gml_2131_0");
                global.msg[4] = stringsetloc("\\E2* Constantly terrorizing customers with war chants./", "scr_text_slash_scr_text_gml_2132_0");
                global.msg[5] = stringsetloc("\\E3* Purple Guy - Man^1, THAT GUY^1, you gotta.../", "scr_text_slash_scr_text_gml_2133_0");
                global.msg[6] = stringsetloc("\\E6* ... actually^1, does that guy even work here?/", "scr_text_slash_scr_text_gml_2134_0");
                global.msg[7] = stringsetloc("\\E3* Ah^1, my co-workers^1. Where would I be without them?/", "scr_text_slash_scr_text_gml_2135_0");
                global.msg[8] = stringsetloc("\\E1* A happy place^1, little buddy^1. A much happier place./%", "scr_text_slash_scr_text_gml_2136_0");
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E3* It's fine^1, Little Buddy^1. You don't have to watch me suffer./", "scr_text_slash_scr_text_gml_2141_0");
                global.msg[1] = stringsetloc("\\E1* Just enjoy your freedom... While it lasts.../%", "scr_text_slash_scr_text_gml_2142_0");
            }
            
            break;
        
        case 345:
            global.choicemsg[0] = stringsetloc("#Fruit Juice", "scr_text_slash_scr_text_gml_2147_0");
            global.choicemsg[1] = stringsetloc("#Nothing", "scr_text_slash_scr_text_gml_2148_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2151_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2152_0_b");
            global.msg[0] = stringsetloc("* Kris..^1. What a pleasant surprise to see you here^1.&* And on a school day./", "scr_text_slash_scr_text_gml_2151_0");
            global.msg[1] = stringsetloc("* There must be a reason that you came here at such a time./", "scr_text_slash_scr_text_gml_2152_0");
            global.msg[2] = stringsetloc("* I^1, Father Alvin^1, implore you^1.&* If you have anything weighing on your mind^1, please^1, speak./", "scr_text_slash_scr_text_gml_2153_0");
            global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2154_0");
            break;
        
        case 346:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* Kris, if you want some of our \"sick\" Fruit Juice^1, you should come to our service./", "scr_text_slash_scr_text_gml_2160_0");
                global.msg[1] = stringsetloc("* Our choir sounds a bit thinner since your brother went away./", "scr_text_slash_scr_text_gml_2161_0");
                global.msg[2] = stringsetloc("* Kris^1, it would be wonderful if you would sing with us./", "scr_text_slash_scr_text_gml_2162_0");
                global.msg[3] = stringsetloc("* Or even participated to any extent,/", "scr_text_slash_scr_text_gml_2163_0");
                global.msg[4] = stringsetloc("* Instead of just trying to drink the Fruit Juice./%", "scr_text_slash_scr_text_gml_2164_0");
            }
            else
            {
                global.msg[0] = stringsetloc("* I understand^1.&* I hope in time you may find the words you seek./", "scr_text_slash_scr_text_gml_2168_0");
                global.msg[1] = stringsetloc("* Let the Angel's power light your way./%", "scr_text_slash_scr_text_gml_2169_0");
            }
            
            break;
        
        case 350:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_2174_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_2175_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2178_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2179_0_b");
            global.msg[0] = stringsetloc("* (Scented markers.)/", "scr_text_slash_scr_text_gml_2178_0");
            global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2179_0");
            break;
        
        case 351:
            if (global.choice == 0)
                global.msg[0] = stringsetloc("* (You dig out the marshmallow one and start huffing it.)/%", "scr_text_slash_scr_text_gml_2185_0");
            else
                global.msg[0] = stringsetloc("* (The chocolate one smells too fake anyway.)/%", "scr_text_slash_scr_text_gml_2189_0");
            
            break;
        
        case 355:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_2194_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_2195_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2198_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2199_0_b");
            global.msg[0] = stringsetloc("* (It's a toilet.^1)&* (Flush it?)/", "scr_text_slash_scr_text_gml_2198_0");
            global.msg[1] = stringsetloc("& &         Yes         No\\C1", "scr_text_slash_scr_text_gml_2199_0");
            global.msg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2202_0");
            
            if (global.plot >= 0)
                global.msg[1] = stringsetloc(" \\C2", "scr_text_slash_scr_text_gml_2205_0");
            
            break;
        
        case 356:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("%%", "scr_text_slash_scr_text_gml_2216_0");
                
                with (obj_town_event)
                    con = 60;
            }
            else
            {
                global.msg[0] = stringsetloc("* (It's good to conserve water.)/%", "scr_text_slash_scr_text_gml_2219_0");
            }
            
            break;
        
        case 360:
            global.choicemsg[0] = stringsetloc("#Yes", "scr_text_slash_scr_text_gml_2226_0");
            global.choicemsg[1] = stringsetloc("#No", "scr_text_slash_scr_text_gml_2227_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2228_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2229_0_b");
            global.msg[0] = stringsetloc("* (It's an obligatory hospital piano^1, shrunk to fit in the corner.)/", "scr_text_slash_scr_text_gml_2228_0");
            global.msg[1] = stringsetloc("* (As a result, it's missing most of the good keys.)/", "scr_text_slash_scr_text_gml_2229_0");
            global.msg[2] = stringsetloc("* (Play it?)/", "scr_text_slash_scr_text_gml_2230_0");
            global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2231_0");
            break;
        
        case 361:
            if (global.choice == 0)
            {
                with (obj_npc_room)
                    tempvar = 1;
                
                snd_play(snd_pianonoise);
                global.msg[0] = stringsetloc("* (Plink...)/%", "scr_text_slash_scr_text_gml_2239_0");
            }
            else
            {
                global.msg[0] = stringsetloc("* (Your hands linger over the keys doing nothing.)/%", "scr_text_slash_scr_text_gml_2243_0");
            }
            
            break;
        
        case 365:
            global.msg[0] = stringsetloc("* (Ring^1, ring...)/", "scr_text_slash_scr_text_gml_2248_0");
            scr_torface(1, 8);
            global.msg[2] = stringsetloc("* K..^1. Kris!?/", "scr_text_slash_scr_text_gml_2250_0");
            global.msg[3] = stringsetloc("\\E1* Whatever have you been doing!?/", "scr_text_slash_scr_text_gml_2251_0");
            global.msg[4] = stringsetloc("\\E3* I sat in the car waiting for you after school for half an hour...!/", "scr_text_slash_scr_text_gml_2252_0");
            global.msg[5] = stringsetloc("\\E7* I called and called^1, but you never picked up.../", "scr_text_slash_scr_text_gml_2253_0");
            global.msg[6] = stringsetloc("\\E8* You had your poor mother worried sick!/", "scr_text_slash_scr_text_gml_2254_0");
            global.msg[7] = stringsetloc("\\E7* Kris^1, I am afraid I am going to have to punish you.../", "scr_text_slash_scr_text_gml_2255_0");
            global.msg[8] = stringsetloc("\\E8* ... huh?/", "scr_text_slash_scr_text_gml_2256_0");
            global.msg[9] = stringsetloc("\\E1* ... A friend?/", "scr_text_slash_scr_text_gml_2257_0");
            global.msg[10] = stringsetloc("\\E0* You were spending time with..^1. a friend?/", "scr_text_slash_scr_text_gml_2258_0");
            global.msg[11] = stringsetloc("\\E0* .../", "scr_text_slash_scr_text_gml_2259_0");
            global.msg[12] = stringsetloc("\\E9* Kris.../", "scr_text_slash_scr_text_gml_2260_0");
            global.msg[13] = stringsetloc("\\E0* I will make an exception this time./", "scr_text_slash_scr_text_gml_2261_0");
            global.msg[14] = stringsetloc("* You can continue your adventures a little longer./", "scr_text_slash_scr_text_gml_2262_0");
            global.msg[15] = stringsetloc("\\E1* But when you return home.../", "scr_text_slash_scr_text_gml_2263_0");
            global.msg[16] = stringsetloc("\\E5* You are going to have to go to bed early./", "scr_text_slash_scr_text_gml_2264_0");
            global.msg[17] = stringsetloc("\\E0* See you soon^1, honey./", "scr_text_slash_scr_text_gml_2265_0");
            scr_noface(18);
            global.msg[19] = stringsetloc("* (Click...)/%", "scr_text_slash_scr_text_gml_2267_0");
            break;
        
        case 370:
            global.choicemsg[0] = stringsetloc("Great to#see you#again", "scr_text_slash_scr_text_gml_2271_0");
            global.choicemsg[1] = stringsetloc("Who the#hell are#you?", "scr_text_slash_scr_text_gml_2272_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2275_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2276_0_b");
            global.msg[0] = stringsetloc("\\E0* hey, look who's walkin' around./", "scr_text_slash_scr_text_gml_2275_0");
            global.msg[1] = stringsetloc("\\E2* how are ya^1, kid?/", "scr_text_slash_scr_text_gml_2276_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2277_0");
            break;
        
        case 371:
            global.choicemsg[0] = stringsetloc("#Store", "scr_text_slash_scr_text_gml_2281_0");
            global.choicemsg[1] = stringsetloc("#Friends", "scr_text_slash_scr_text_gml_2282_0");
            global.choicemsg[2] = stringsetloc("Leave", "scr_text_slash_scr_text_gml_2283_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2286_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E2* yeah^1, it's real nice^1, isn't it?/", "scr_text_slash_scr_text_gml_2287_0");
                global.msg[1] = stringsetloc("\\E5* especially considering i've never met you before./", "scr_text_slash_scr_text_gml_2288_0");
                global.msg[2] = stringsetloc("\\E0* the name's sans^1.&* sans the skeleton^1.&* i'm new in town./", "scr_text_slash_scr_text_gml_2289_0");
                global.msg[3] = stringsetloc("\\E2* what's up?/", "scr_text_slash_scr_text_gml_2290_0");
                global.msg[4] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_2291_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E3* hmm..^1. y'know^1, good question./", "scr_text_slash_scr_text_gml_2295_0");
                global.msg[1] = stringsetloc("\\E5* i'm sans^1.&* your friendly neighborhood skeleton./", "scr_text_slash_scr_text_gml_2296_0");
                global.msg[2] = stringsetloc("\\E2* what's up?/", "scr_text_slash_scr_text_gml_2297_0");
                global.msg[3] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_2298_0");
            }
            
            if (global.flag[273] >= 1)
            {
                global.fe = 5;
                global.msg[0] = stringsetloc("\\E5* what's up?/", "scr_text_slash_scr_text_gml_2304_0");
                global.msg[1] = stringsetloc("\\C3 ", "scr_text_slash_scr_text_gml_2305_0");
            }
            
            if (global.flag[273] < 1)
                global.flag[273] = 1;
            
            break;
        
        case 372:
            global.choicemsg[0] = stringsetloc("#Me", "scr_text_slash_scr_text_gml_2311_0");
            global.choicemsg[1] = stringsetloc("#My Mom", "scr_text_slash_scr_text_gml_2312_0");
            global.choicemsg[2] = stringsetloc("My Teacher", "scr_text_slash_scr_text_gml_2313_0");
            global.choicemsg[3] = stringsetloc("Nobody", "scr_text_slash_scr_text_gml_2314_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E2* behind me^1?&* yeah^1, that's the grocery store./", "scr_text_slash_scr_text_gml_2318_0");
                global.msg[1] = stringsetloc("\\E1* unfortunately^1, it's closed./", "scr_text_slash_scr_text_gml_2319_0");
                global.msg[2] = stringsetloc("\\E2* what a pain^1.&* i really wanted to buy some milk./", "scr_text_slash_scr_text_gml_2320_0");
                global.msg[3] = stringsetloc("\\E5* someone oughta complain to the guy who runs it./%", "scr_text_slash_scr_text_gml_2321_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E0* we just moved here^1, so i hardly know anyone./", "scr_text_slash_scr_text_gml_2325_0");
                global.msg[1] = stringsetloc("\\E2* why^1, got anyone i should know better?/", "scr_text_slash_scr_text_gml_2326_0");
                global.msg[2] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2327_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E2* oh^1, you've got something better to do?/", "scr_text_slash_scr_text_gml_2333_0");
                global.msg[1] = stringsetloc("\\E0* me too./", "scr_text_slash_scr_text_gml_2334_0");
                global.msg[2] = stringsetloc("\\E2* anyway^1, i'll be standing here doing nothing./%", "scr_text_slash_scr_text_gml_2335_0");
            }
            
            break;
        
        case 373:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* huh?/%", "scr_text_slash_scr_text_gml_2342_0");
                
                if (global.flag[274] == 2)
                {
                    global.msg[0] = stringsetloc("\\E2* ah^1, sorry^1. i don't hang out with idiot babies./", "scr_text_slash_scr_text_gml_2345_0");
                    global.msg[1] = stringsetloc("\\E5* they compete with my sociological niche./%", "scr_text_slash_scr_text_gml_2346_0");
                }
                
                if (global.flag[274] == 1)
                    global.msg[0] = stringsetloc("\\E5* hey^1, i gave you a number^1, what more do you want?/%", "scr_text_slash_scr_text_gml_2351_0");
                
                if (global.flag[274] == 0)
                {
                    global.msg[0] = stringsetloc("\\E2* woah there^1, tiger./", "scr_text_slash_scr_text_gml_2356_0");
                    global.msg[1] = stringsetloc("\\E0* you can't just jump straight into friendship./", "scr_text_slash_scr_text_gml_2357_0");
                    global.msg[2] = stringsetloc("\\E2* it takes time./", "scr_text_slash_scr_text_gml_2358_0");
                    global.msg[3] = stringsetloc("\\E3* .../", "scr_text_slash_scr_text_gml_2359_0");
                    global.msg[4] = stringsetloc("\\E2* alright^1, that's enough time./", "scr_text_slash_scr_text_gml_2360_0");
                    global.msg[5] = stringsetloc("\\E0* take this./", "scr_text_slash_scr_text_gml_2361_0");
                    global.msg[6] = stringsetloc("\\E5* call it whenever you feel like./", "scr_text_slash_scr_text_gml_2362_0");
                    scr_noface(7);
                    global.msg[8] = stringsetloc("* (You got Sans's Number.)/%", "scr_text_slash_scr_text_gml_2364_0");
                    global.flag[274] = 1;
                    scr_phoneadd(202);
                }
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E1* your mother^1, huh...?/", "scr_text_slash_scr_text_gml_2372_0");
                global.msg[1] = stringsetloc("\\E0* too late./", "scr_text_slash_scr_text_gml_2373_0");
                global.msg[2] = stringsetloc("\\E5* i already \"befriended\" your mom last night./", "scr_text_slash_scr_text_gml_2374_0");
                global.msg[3] = stringsetloc("\\E2* she's great. came to the store to buy chocolate kisses./", "scr_text_slash_scr_text_gml_2375_0");
                global.msg[4] = stringsetloc("\\E3* said she's gotta lock her door to stop you from eating 'em./", "scr_text_slash_scr_text_gml_2376_0");
                global.msg[5] = stringsetloc("\\E5* heheheh... you sound like a fun kid^1, huh?/%", "scr_text_slash_scr_text_gml_2377_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E0* alphys^1. yeah^1. i know about her./", "scr_text_slash_scr_text_gml_2381_0");
                global.msg[1] = stringsetloc("\\E2* came into the store with a suitcase and sunglasses./", "scr_text_slash_scr_text_gml_2382_0");
                global.msg[2] = stringsetloc("\\E0* thought she was part of the mob./", "scr_text_slash_scr_text_gml_2383_0");
                global.msg[3] = stringsetloc("\\E2* she opened the case and stuffed it full of instant noodles./", "scr_text_slash_scr_text_gml_2384_0");
                global.msg[4] = stringsetloc("\\E0* paid in small bills,/", "scr_text_slash_scr_text_gml_2385_0");
                global.msg[5] = stringsetloc("\\E0* then slunk out of the place,/", "scr_text_slash_scr_text_gml_2386_0");
                global.msg[6] = stringsetloc("\\E2* pajamas trailing on the floor./", "scr_text_slash_scr_text_gml_2387_0");
                global.msg[7] = stringsetloc("\\E0* anyway^1, our relationship is^1, uh^1, purely business./", "scr_text_slash_scr_text_gml_2388_0");
                global.msg[8] = stringsetloc("\\E2* so^1, uh^1, i guess i'll just let her do her thing./%", "scr_text_slash_scr_text_gml_2389_0");
            }
            
            if (global.choice == 3)
                global.msg[0] = stringsetloc("\\E1* harsh^1, but fair./%", "scr_text_slash_scr_text_gml_2393_0");
            
            break;
        
        case 375:
            global.choicemsg[0] = stringsetloc("#1", "scr_text_slash_scr_text_gml_2398_0");
            global.choicemsg[1] = stringsetloc("#2", "scr_text_slash_scr_text_gml_2399_0");
            global.choicemsg[2] = stringsetloc("3", "scr_text_slash_scr_text_gml_2402_0");
            global.choicemsg[3] = stringsetloc("4", "scr_text_slash_scr_text_gml_2403_0_b");
            snd_play_x(snd_phone, 0.7, 1);
            global.msg[0] = stringsetloc("* (Ring^1, ring...)/", "scr_text_slash_scr_text_gml_2403_0");
            global.msg[1] = stringsetloc("* Hello./", "scr_text_slash_scr_text_gml_2404_0");
            global.msg[2] = stringsetloc("* You have reached the Hotline for Idiot Babies./", "scr_text_slash_scr_text_gml_2405_0");
            global.msg[3] = stringsetloc("* Please press 1 for Idiots^1, 2 for Babies^1, 3 for Idiot Babies^1, and 4 for None./", "scr_text_slash_scr_text_gml_2406_0");
            global.msg[4] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2407_0");
            
            if (global.flag[274] == 2)
            {
                global.msg[0] = stringsetloc("* (Ring^1, ring...^1)&* (Ring^1, ring...^1)&* (Ring^1, ring...)/", "scr_text_slash_scr_text_gml_2410_0");
                global.msg[1] = stringsetloc("* (The phone kept ringing infinitely.)/%", "scr_text_slash_scr_text_gml_2411_0");
            }
            
            break;
        
        case 376:
            if (global.flag[274] == 1)
                global.flag[274] = 2;
            
            scr_phonename();
            global.msg[0] = stringsetloc("* Huh!?/", "scr_text_slash_scr_text_gml_2418_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* Ah^1, you're an Idiot?/", "scr_text_slash_scr_text_gml_2419_0");
                global.flag[275] = 1;
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("* Ah^1, you're an Baby?/", "scr_text_slash_scr_text_gml_2420_0");
                global.flag[275] = 2;
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("* Ah^1, you're an Idiot Baby?/", "scr_text_slash_scr_text_gml_2421_0");
                global.flag[275] = 3;
            }
            
            global.msg[1] = stringsetloc("* .../", "scr_text_slash_scr_text_gml_2422_0");
            global.msg[2] = stringsetloc("* To tell you the truth^1, I'm one too./", "scr_text_slash_scr_text_gml_2423_0");
            global.msg[3] = stringsetloc("* Let's try our best^1, OK?/", "scr_text_slash_scr_text_gml_2424_0");
            global.msg[4] = stringsetloc("* (Click...)/%", "scr_text_slash_scr_text_gml_2425_0");
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("* Why'd you call the Hotline for Idiot Babies if you aren't an Idiot Baby?/", "scr_text_slash_scr_text_gml_2428_0");
                global.msg[1] = stringsetloc("* (Click...)/%", "scr_text_slash_scr_text_gml_2429_0");
            }
            
            break;
        
        case 380:
            global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_2435_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_2436_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2439_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2440_0_b");
            global.msg[0] = stringsetloc("\\E1* ... hey bud./", "scr_text_slash_scr_text_gml_2439_0");
            global.msg[1] = stringsetloc("\\E2* ... are you busy tomorrow...?/", "scr_text_slash_scr_text_gml_2440_0");
            global.msg[2] = stringsetloc("\\E1* i need some help with something./", "scr_text_slash_scr_text_gml_2441_0");
            global.msg[3] = stringsetloc("\\E2* it'd be great if you could come over./", "scr_text_slash_scr_text_gml_2442_0");
            global.msg[4] = stringsetloc("\\E5* i live just next door^1, ya know./", "scr_text_slash_scr_text_gml_2443_0");
            global.msg[5] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2444_0");
            break;
        
        case 381:
            if (global.choice == 0)
            {
                if (global.flag[33] < 40)
                {
                    global.msg[0] = stringsetloc("\\E2* wow..^1. you answered quickly^1, huh./", "scr_text_slash_scr_text_gml_2452_0");
                    global.msg[1] = stringsetloc("\\E0* that's not good^1.&* i'm a total stranger./", "scr_text_slash_scr_text_gml_2453_0");
                    global.msg[2] = stringsetloc("\\E5* you should probably hesitate more./", "scr_text_slash_scr_text_gml_2454_0");
                }
                
                if (global.flag[33] >= 40)
                {
                    global.msg[0] = stringsetloc("\\E2* wow^1, you were deliberating for a while./", "scr_text_slash_scr_text_gml_2459_0");
                    global.msg[1] = stringsetloc("\\E0* gee^1, what's wrong?/", "scr_text_slash_scr_text_gml_2460_0");
                    global.msg[2] = stringsetloc("\\E5* don't want to hang out with a stranger?/", "scr_text_slash_scr_text_gml_2461_0");
                }
                
                global.msg[3] = stringsetloc("\\E2* well, guess i shouldn't complain.../", "scr_text_slash_scr_text_gml_2464_0");
                global.msg[4] = stringsetloc("\\E0* huh...^1?&* what are we going to be doing?/", "scr_text_slash_scr_text_gml_2465_0");
                global.msg[5] = stringsetloc("\\E2* oh^1, i'm not going to be there./", "scr_text_slash_scr_text_gml_2466_0");
                global.msg[6] = stringsetloc("\\E5* that'd be weird./", "scr_text_slash_scr_text_gml_2467_0");
                global.msg[7] = stringsetloc("\\E2* it's just gonna be you and my little brother./", "scr_text_slash_scr_text_gml_2468_0");
                global.msg[8] = stringsetloc("\\E0* he needs friends./", "scr_text_slash_scr_text_gml_2469_0");
                global.msg[9] = stringsetloc("\\E2* thanks for hanging out with him./", "scr_text_slash_scr_text_gml_2470_0");
                global.msg[10] = stringsetloc("\\E5* see ya./%", "scr_text_slash_scr_text_gml_2471_0");
            }
            
            if (global.choice == 1)
            {
                if (global.flag[33] < 40)
                    global.msg[0] = stringsetloc("\\E2* ... well, that was quick./", "scr_text_slash_scr_text_gml_2479_0");
                
                if (global.flag[33] >= 40)
                    global.msg[0] = stringsetloc("\\E2* ... hmm, well, that's disappointing./", "scr_text_slash_scr_text_gml_2484_0");
                
                global.msg[1] = stringsetloc("\\E1* alright^1, alright^1, lemme sweeten the deal for ya./", "scr_text_slash_scr_text_gml_2486_0");
                global.msg[2] = stringsetloc("\\E1* if you come over..^1. i^1, will personally,/", "scr_text_slash_scr_text_gml_2487_0");
                global.msg[3] = stringsetloc("\\E5* not even be there./", "scr_text_slash_scr_text_gml_2488_0");
                global.msg[4] = stringsetloc("\\E2* it'll just be you and my little brother./", "scr_text_slash_scr_text_gml_2489_0");
                global.msg[5] = stringsetloc("\\E0* since he's new here^1, he needs friends./", "scr_text_slash_scr_text_gml_2490_0");
                global.msg[6] = stringsetloc("\\E2* anyway^1, thanks for agreeing to hang out with him./", "scr_text_slash_scr_text_gml_2491_0");
                global.msg[7] = stringsetloc("\\E5* see ya./%", "scr_text_slash_scr_text_gml_2492_0");
            }
            
            break;
        
        case 385:
            global.choicemsg[0] = stringsetloc(" #Susie", "scr_text_slash_scr_text_gml_2499_0");
            global.choicemsg[1] = stringsetloc(" #Key", "scr_text_slash_scr_text_gml_2500_0");
            global.choicemsg[2] = stringsetloc("Anything", "scr_text_slash_scr_text_gml_2501_0");
            global.choicemsg[3] = stringsetloc("Nothing", "scr_text_slash_scr_text_gml_2502_0");
            global.msg[0] = stringsetloc("\\E0* Oh^1, hi^1, Kris!/", "scr_text_slash_scr_text_gml_2503_0");
            global.msg[1] = stringsetloc("* Did you need help with your homework again?/", "scr_text_slash_scr_text_gml_2504_0");
            global.msg[2] = stringsetloc("\\E4* I know you were having trouble last time^1, so^1, um,/", "scr_text_slash_scr_text_gml_2505_0");
            global.msg[3] = stringsetloc("\\E0* I actually got a few things ready for you^1, in case --/", "scr_text_slash_scr_text_gml_2506_0");
            global.msg[4] = stringsetloc("\\E2* Ah^1, wait^1, sorry^1! I can't right now.../", "scr_text_slash_scr_text_gml_2507_0");
            global.msg[5] = stringsetloc("\\E3* I forgot my house key again^1, and.../", "scr_text_slash_scr_text_gml_2508_0");
            global.msg[6] = stringsetloc("\\E4* Sorry^1, Kris^1, I'll help you later^1, if that's ok./", "scr_text_slash_scr_text_gml_2509_0");
            global.msg[7] = stringsetloc("\\E0* See you at school^1, Kris!/", "scr_text_slash_scr_text_gml_2510_0");
            global.msg[8] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_2511_0");
            global.msg[9] = stringsetloc("\\E5* .../", "scr_text_slash_scr_text_gml_2512_0");
            global.msg[10] = stringsetloc("\\E4* Umm^1, Kris?/", "scr_text_slash_scr_text_gml_2513_0");
            global.msg[11] = stringsetloc("\\E0* Did you..^1. want to talk about something?/", "scr_text_slash_scr_text_gml_2514_0");
            global.msg[12] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2515_0");
            
            if (global.flag[276] >= 1)
            {
                global.msg[0] = stringsetloc("\\E0* Hi Kris^1!&* Is something up?/", "scr_text_slash_scr_text_gml_2518_0");
                global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2519_0");
            }
            
            if (global.flag[276] == 0)
                global.flag[276] = 1;
            
            break;
        
        case 386:
            global.choicemsg[0] = stringsetloc(" #She's nice", "scr_text_slash_scr_text_gml_2525_0");
            global.choicemsg[1] = stringsetloc(" #Terrible", "scr_text_slash_scr_text_gml_2526_0");
            global.choicemsg[2] = stringsetloc("Eats Chalk", "scr_text_slash_scr_text_gml_2527_0");
            global.choicemsg[3] = stringsetloc("...", "scr_text_slash_scr_text_gml_2528_0");
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E4* Susie^1! That's right^1, you were with Susie!/", "scr_text_slash_scr_text_gml_2531_0");
                global.msg[1] = stringsetloc("\\E3* When you didn't come back to class^1, I was worried^1, but.../", "scr_text_slash_scr_text_gml_2532_0");
                global.msg[2] = stringsetloc("\\E4* Everything turned out OK^1! I think?/", "scr_text_slash_scr_text_gml_2533_0");
                global.msg[3] = stringsetloc("\\E5* .../", "scr_text_slash_scr_text_gml_2534_0");
                global.msg[4] = stringsetloc("\\E3* ... Umm^1, Kris^1? Can I ask something^1, if that's OK?/", "scr_text_slash_scr_text_gml_2535_0");
                global.msg[5] = stringsetloc("\\E4* Susie..^1. I'm kind of..^1. curious what she's like^1, you know?/", "scr_text_slash_scr_text_gml_2536_0");
                global.msg[6] = stringsetloc("\\E8* I mean^1, who DOESN'T wonder about her^1? She never talks to anyone./", "scr_text_slash_scr_text_gml_2537_0");
                global.msg[7] = stringsetloc("\\E4* So^1, Kris^1, could you tell me about her^1? If that's ok.../", "scr_text_slash_scr_text_gml_2538_0");
                global.msg[8] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_2539_0");
                
                if (global.flag[276] >= 2)
                {
                    global.msg[0] = stringsetloc("\\E2* Oh^1, can I ask something else about her!?/", "scr_text_slash_scr_text_gml_2543_0");
                    global.msg[1] = stringsetloc("\\E3* Well^1, did it seem like^1, she^1, um.../", "scr_text_slash_scr_text_gml_2544_0");
                    global.msg[2] = stringsetloc("\\E8* (W-wait^1, you definitely wouldn't know THAT...)/%", "scr_text_slash_scr_text_gml_2545_0");
                }
                
                if (global.flag[276] < 2)
                    global.flag[276] = 2;
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E2* ... huh^1? Why don't I ask my mom for the key?/", "scr_text_slash_scr_text_gml_2553_0");
                global.msg[1] = stringsetloc("\\E3* I..^1. I mean^1, um..^1. I..^1. you know,/", "scr_text_slash_scr_text_gml_2554_0");
                global.msg[2] = stringsetloc("\\E4* She doesn't like it when I bother her when she's working./", "scr_text_slash_scr_text_gml_2555_0");
                global.msg[3] = stringsetloc("\\E0* Don't worry^1, OK^1? I'll just go over to Catti's./%", "scr_text_slash_scr_text_gml_2556_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E1* Umm..^1. Kris...^1? Are you feeling alright?/", "scr_text_slash_scr_text_gml_2560_0");
                global.msg[1] = stringsetloc("\\E5* Normally you're not so... talkative./", "scr_text_slash_scr_text_gml_2561_0");
                global.msg[2] = stringsetloc("\\E4* Oh! I don't mean to sound like something's wrong with you./", "scr_text_slash_scr_text_gml_2562_0");
                global.msg[3] = stringsetloc("\\E4* .../", "scr_text_slash_scr_text_gml_2563_0");
                global.msg[4] = stringsetloc("\\E2* Umm^1, Kris^1, is something wrong?/", "scr_text_slash_scr_text_gml_2564_0");
                global.msg[5] = stringsetloc("\\E3* Why did you go to the hospital to see my dad...?/", "scr_text_slash_scr_text_gml_2565_0");
                global.msg[6] = stringsetloc("\\E2* I mean^1, I'm sure he appreciated it^1, but... um.../", "scr_text_slash_scr_text_gml_2566_0");
                global.msg[7] = stringsetloc("\\E4* Gosh^1, I'm sorry^1, Kris^1. Forget I said anything!/%", "scr_text_slash_scr_text_gml_2567_0");
            }
            
            if (global.choice == 3)
                global.msg[0] = stringsetloc("\\E0* Tell Azzy I said hi^1, Kris!/%", "scr_text_slash_scr_text_gml_2571_0");
            
            break;
        
        case 387:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E2* What...^1?&* She's..^1. a nice person?/", "scr_text_slash_scr_text_gml_2584_0");
                global.msg[1] = stringsetloc("* Really!^1? L-like, really!^1? Honestly!^1? Truly!?/", "scr_text_slash_scr_text_gml_2585_0");
                global.msg[2] = stringsetloc("\\E4* I mean^1, that's just what I was hoping^1, but.../", "scr_text_slash_scr_text_gml_2586_0");
                global.msg[3] = stringsetloc("\\E2* W-wait^1, this isn't another trick^1, is it^1, Kris?/", "scr_text_slash_scr_text_gml_2587_0");
                global.msg[4] = stringsetloc("\\E8* Like when you put ketchup on your arms and told me it was blood?/", "scr_text_slash_scr_text_gml_2588_0");
                global.msg[5] = stringsetloc("\\E2* ... R-really^1? You're serious^1? You're totally serious?/", "scr_text_slash_scr_text_gml_2589_0");
                global.msg[6] = stringsetloc("\\E6* ... gosh^1, then maybe I should try talking to her.../", "scr_text_slash_scr_text_gml_2590_0");
                global.msg[7] = stringsetloc("\\E8* B-but if I die^1, you're paying for my funeral^1, Kris!/", "scr_text_slash_scr_text_gml_2591_0");
                global.msg[8] = stringsetloc("\\E6* (Though^1, honestly^1, if she's nice^1 I might die^1, too...)/%", "scr_text_slash_scr_text_gml_2592_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E2* She WHAT^1? She smashed you against the LOCKERS?/", "scr_text_slash_scr_text_gml_2596_0");
                global.msg[1] = stringsetloc("\\E7* Gosh^1, Kris^1, I'm really sorry^1. That's just awful./", "scr_text_slash_scr_text_gml_2597_0");
                global.msg[2] = stringsetloc("\\E3* I..^1. I'd THOUGHT Susie was good^1, just.../", "scr_text_slash_scr_text_gml_2598_0");
                global.msg[3] = stringsetloc("\\E6* Maybe it would take someone special to find her good side./", "scr_text_slash_scr_text_gml_2599_0");
                global.msg[4] = stringsetloc("\\E7* ... but she really IS terrible^1, isn't she...?/", "scr_text_slash_scr_text_gml_2600_0");
                global.msg[5] = stringsetloc("\\E7* Kris..^1. I'm SO sorry you have to go through this./", "scr_text_slash_scr_text_gml_2601_0");
                global.msg[6] = stringsetloc("\\E4* In fact^1, I wonder if..^1. d-do you think...?/", "scr_text_slash_scr_text_gml_2602_0");
                global.msg[7] = stringsetloc("\\E3* I wonder if Alphys would let us switch partners^1, I mean?/", "scr_text_slash_scr_text_gml_2603_0");
                global.msg[8] = stringsetloc("\\E2* You know^1, so you wouldn't have to be the one^1, who^1, um,/", "scr_text_slash_scr_text_gml_2604_0");
                global.msg[9] = stringsetloc("\\E3* Gets to be^1, slammed into lockers^1, and stuff^1, anymore./", "scr_text_slash_scr_text_gml_2605_0");
                global.msg[10] = stringsetloc("\\E8* (Wait^1, I don't think I phrased that correctly...)/%", "scr_text_slash_scr_text_gml_2606_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E2* What^1?&* She was EATING the chalk???/", "scr_text_slash_scr_text_gml_2610_0");
                global.msg[1] = stringsetloc("* R..^1. really...?/", "scr_text_slash_scr_text_gml_2611_0");
                global.msg[2] = stringsetloc("\\E8* Wait^1! You're teasing me^1, aren't you^1, Kris?/", "scr_text_slash_scr_text_gml_2612_0");
                global.msg[3] = stringsetloc("\\E3* L-like when you told me ICE-E was real and eats kids.../", "scr_text_slash_scr_text_gml_2613_0");
                global.msg[4] = stringsetloc("\\E8* So Dess smacked you with a wiffle bat 'til you stopped lying./", "scr_text_slash_scr_text_gml_2614_0");
                global.msg[5] = stringsetloc("\\E2* ... Huh^1? You're telling the truth^1? Seriously^1?/", "scr_text_slash_scr_text_gml_2615_0");
                global.msg[6] = stringsetloc("\\E5* .../", "scr_text_slash_scr_text_gml_2616_0");
                global.msg[7] = stringsetloc("\\E0* Umm^1, then..^1. what color chalk does she like?/", "scr_text_slash_scr_text_gml_2617_0");
                global.msg[8] = stringsetloc("\\E4* And^1, do you think she likes the thin or the thick kind...?/", "scr_text_slash_scr_text_gml_2618_0");
                global.msg[9] = stringsetloc("\\E8* (Wait, maybe making her a lunchbox full of chalk is stupid...)/%", "scr_text_slash_scr_text_gml_2619_0");
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E2* Seriously^1, Kris^1? But I help you ALL the time!/", "scr_text_slash_scr_text_gml_2623_0");
                global.msg[1] = stringsetloc("\\E8* The LEAST you can do is give me a LITTLE information!/", "scr_text_slash_scr_text_gml_2624_0");
                global.msg[2] = stringsetloc("\\E2* Like^1, d-does she like metal music!?/", "scr_text_slash_scr_text_gml_2625_0");
                global.msg[3] = stringsetloc("\\E2* Is she really an obligate carnivore!?/", "scr_text_slash_scr_text_gml_2626_0");
                global.msg[4] = stringsetloc("\\E2* D..^1. Does she really have a tail underneath her jacket!?/", "scr_text_slash_scr_text_gml_2627_0");
                global.msg[5] = stringsetloc("\\E3* Or^1, or... or..^1./", "scr_text_slash_scr_text_gml_2628_0");
                global.msg[6] = stringsetloc("\\E4* Sorry Kris^1, it's not any of my business^1, is it...?/", "scr_text_slash_scr_text_gml_2629_0");
                global.msg[7] = stringsetloc("\\E8* (I blew it, didn't I...)/%", "scr_text_slash_scr_text_gml_2630_0");
            }
            
            break;
        
        case 400:
            global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_2636_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_2637_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2640_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2641_0_b");
            global.msg[0] = stringsetloc("* (If you go to bed^1, this chapter of your adventures will end.)/", "scr_text_slash_scr_text_gml_2640_0");
            global.msg[1] = stringsetloc("* (Will you go to bed?)/", "scr_text_slash_scr_text_gml_2641_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2642_0");
            break;
        
        case 401:
            if (global.choice == 0)
            {
                with (obj_krisroom)
                    con = 50;
                
                global.msg[0] = stringsetloc("* (You decided to go to bed.)/%", "scr_text_slash_scr_text_gml_2649_0");
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (You will sleep later.)/%", "scr_text_slash_scr_text_gml_2653_0");
            
            break;
        
        case 402:
            global.choicemsg[0] = stringsetloc(" #Sleep", "scr_text_slash_scr_text_gml_2658_0");
            global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_2659_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2662_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2663_0");
            global.msg[0] = stringsetloc("* (It's your bed.)/", "scr_text_slash_scr_text_gml_2662_0");
            global.msg[1] = stringsetloc("* (If you go back to sleep^1, \\cYyou may miss a lot of important things\\cW.)/", "scr_text_slash_scr_text_gml_2665_0_b");
            global.msg[2] = stringsetloc("* (Will you go to bed?)/", "scr_text_slash_scr_text_gml_2664_0");
            global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2665_0");
            break;
        
        case 403:
            if (global.choice == 0)
            {
                global.choicemsg[0] = stringsetloc(" #Sleep!!!", "scr_text_slash_scr_text_gml_2671_0");
                global.choicemsg[1] = stringsetloc(" #Do not!!!", "scr_text_slash_scr_text_gml_2672_0");
                global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2675_0");
                global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2676_0");
                
                with (obj_krisroom)
                    con = 100;
                
                global.msg[0] = stringsetloc("* (For some reason^1, you decided to go back to sleep...)/%", "scr_text_slash_scr_text_gml_2677_0");
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* (You can sleep in class.)/%", "scr_text_slash_scr_text_gml_2681_0");
            
            break;
        
        case 405:
            global.choicemsg[0] = stringsetloc("Play#a game", "scr_text_slash_scr_text_gml_2686_0");
            global.choicemsg[1] = stringsetloc("Do not#play a#game", "scr_text_slash_scr_text_gml_2687_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2690_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2691_0_b");
            global.msg[0] = stringsetloc("* BOO HOO^1, BOO HOO^1, UEE HEE HEE./", "scr_text_slash_scr_text_gml_2690_0");
            global.msg[1] = stringsetloc("* SO LONELY^1, LONELY^1, I BE.../", "scr_text_slash_scr_text_gml_2691_0");
            global.msg[2] = stringsetloc("* BUT LO^1, THREE VISITORS STANDING INSIDE?/", "scr_text_slash_scr_text_gml_2692_0");
            global.msg[3] = stringsetloc("* WHO ARE YOU FEW?/", "scr_text_slash_scr_text_gml_2693_0");
            scr_ralface(4, 0);
            global.msg[5] = stringsetloc("* Nice to meet you^1! I'm Ralsei^1, this is Kris^1, and.../", "scr_text_slash_scr_text_gml_2695_0");
            scr_susface(6, 2);
            global.msg[7] = stringsetloc("* So^1, what the hell are you doing in there?/", "scr_text_slash_scr_text_gml_2697_0");
            scr_noface(8);
            global.msg[9] = stringsetloc("\\TJ* I AM INNOCENT^1, INNOCENT^1.&* I JUST WANTED TO PLAY A GAME^1, GAME./", "scr_text_slash_scr_text_gml_2699_0");
            global.msg[10] = stringsetloc("* BUT THE BORING KINGS FOUND SUCH FUN TO BE A TROUBLE./", "scr_text_slash_scr_text_gml_2700_0");
            global.msg[11] = stringsetloc("* AS PUNISHMENT^1, THEY CRAVED TO IMPRISON MY BODY./", "scr_text_slash_scr_text_gml_2701_0");
            global.msg[12] = stringsetloc("* BUT I'M FAST^1, FAST^1, CLEVER^1, CLEVER./", "scr_text_slash_scr_text_gml_2702_0");
            global.msg[13] = stringsetloc("* THEY LOST THE CHASE^1, AND LOCKED UP THEIR ENTIRE RACE,/", "scr_text_slash_scr_text_gml_2703_0");
            global.msg[14] = stringsetloc("* BUILDING A PRISON AROUND THE WHOLE WORLD^1. NOW I'M THE ONLY FREE ONE./", "scr_text_slash_scr_text_gml_2704_0");
            scr_ralface(15, 8);
            global.msg[16] = stringsetloc("* Huh^1? Free^1? But you're clearly the one behind bars.../", "scr_text_slash_scr_text_gml_2706_0");
            scr_noface(17);
            global.msg[18] = stringsetloc("\\TJ* THINGS DON'T SEEM SUCH FROM HERE^1, LIGHTNERS!/", "scr_text_slash_scr_text_gml_2708_0");
            scr_susface(19, 2);
            global.msg[20] = stringsetloc("* Well^1, sounds like you don't need any help^1, then./", "scr_text_slash_scr_text_gml_2710_0");
            scr_noface(21);
            global.msg[22] = stringsetloc("\\TJ* THAT IS UN-SO^1.&* I GROW LONELY IN MY LITTLE FREEDOM./", "scr_text_slash_scr_text_gml_2712_0");
            global.msg[23] = stringsetloc("* SO^1, SHALL YOU PLAY A GAME WITH ME^1, ME...?/", "scr_text_slash_scr_text_gml_2713_0");
            global.msg[24] = stringsetloc("* I'LL SHOW YOU WHAT IT MEANS TO BE FREE!/", "scr_text_slash_scr_text_gml_2714_0");
            global.msg[25] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2715_0");
            
            if (global.flag[241] == 1)
            {
                global.msg[0] = stringsetloc("* FIND THE KEY^1, AND I'LL LET YOU BE FREE^1, FREE./", "scr_text_slash_scr_text_gml_2719_0");
                global.msg[1] = stringsetloc("* THE KEY IS HIDDEN FROM THE EYES^1. THE OLD SHOPKEEPER KNOWS A SECRET./%", "scr_text_slash_scr_text_gml_2720_0");
            }
            
            break;
        
        case 406:
            global.choicemsg[0] = stringsetloc("Play#a game", "scr_text_slash_scr_text_gml_2725_0");
            global.choicemsg[1] = stringsetloc("Do not#play a#game", "scr_text_slash_scr_text_gml_2726_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2729_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2730_0");
            
            if (global.flag[241] == 0)
                global.flag[241] = 1;
            
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* FIND THE KEY^1, AND I'LL LET YOU BE FREE^1, FREE./", "scr_text_slash_scr_text_gml_2732_0");
                global.msg[1] = stringsetloc("* THE KEY IS HIDDEN FROM THE EYES^1. THE OLD SHOPKEEPER KNOWS A SECRET./%", "scr_text_slash_scr_text_gml_2733_0");
                
                with (obj_event_room)
                    con = 20;
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("* BOO HOO^1, BOO HOO^1, UEE HEE HEE!!/", "scr_text_slash_scr_text_gml_2738_0");
                global.msg[1] = stringsetloc("* HOW CAN YOU REFUSE^1, WHEN YOU ARE ALREADY PLAYING...?/%", "scr_text_slash_scr_text_gml_2739_0");
                
                with (obj_event_room)
                    con = 20;
            }
            
            break;
        
        case 410:
            global.choicemsg[0] = stringsetloc("#Use Key", "scr_text_slash_scr_text_gml_2745_0");
            global.choicemsg[1] = stringsetloc("#Do not", "scr_text_slash_scr_text_gml_2746_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2749_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2750_0_b");
            global.msg[0] = stringsetloc("* UEE HEE HEE^1, THE KEY^1, THE KEY./", "scr_text_slash_scr_text_gml_2749_0");
            global.msg[1] = stringsetloc("* A MARVELLOUS FUN IS ABOUT TO BREAK FREE./", "scr_text_slash_scr_text_gml_2750_0");
            global.msg[2] = stringsetloc("* WON'T YOU LET YOURSELF OUTSIDE?/", "scr_text_slash_scr_text_gml_2751_0");
            global.msg[3] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2752_0");
            global.msg[4] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2755_0");
            break;
        
        case 411:
            if (global.flag[241] < 5)
                global.flag[241] = 5;
            
            scr_keyitemremove(5);
            
            if (global.choice == 0)
            {
                scr_noface(0);
                global.msg[1] = stringsetloc("* (You put the Door Key in front of the Door.)/%", "scr_text_slash_scr_text_gml_2766_0");
                
                with (obj_event_room)
                    con = 5;
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("* YOU CAME TOO FAR^1! YOUR CHOICE HAS RUN OUT!/%", "scr_text_slash_scr_text_gml_2771_0");
                
                with (obj_event_room)
                    con = 5;
            }
            
            break;
        
        case 415:
            global.msg[0] = stringsetloc("* DO NOT TARRY!/%", "scr_text_slash_scr_text_gml_2777_0");
            break;
        
        case 420:
            global.choicemsg[0] = stringsetloc(" #Blaze", "scr_text_slash_scr_text_gml_2783_0");
            global.choicemsg[1] = stringsetloc(" #Do Not Blaze", "scr_text_slash_scr_text_gml_2784_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2785_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2786_0_b");
            global.msg[0] = stringsetloc("* Blaze it./", "scr_text_slash_scr_text_gml_2787_0");
            global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2786_0");
            break;
        
        case 425:
            global.choicemsg[0] = stringsetloc(" #Apologize#Profusely", "scr_text_slash_scr_text_gml_2790_0");
            global.choicemsg[1] = stringsetloc(" #Intimidate", "scr_text_slash_scr_text_gml_2791_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2794_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2795_0_b");
            global.msg[0] = stringsetloc("* Hey^1! You're the chumps that beat me up earlier!/", "scr_text_slash_scr_text_gml_2794_0");
            global.msg[1] = stringsetloc("* There's no way I'll forgive you^1, so scram!/", "scr_text_slash_scr_text_gml_2795_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2796_0");
            break;
        
        case 426:
            if (global.choice == 0)
            {
                scr_ralface(0, 6);
                global.msg[1] = stringsetloc("* We're sorry^1, we made a mistake earlier./", "scr_text_slash_scr_text_gml_2807_0");
                global.msg[2] = stringsetloc("\\E8* We promise we won't do it again!/", "scr_text_slash_scr_text_gml_2808_0");
                scr_noface(3);
                global.msg[4] = stringsetloc("* Huh...^1? You're apologizing^1? I guess I'll forgive you then.../", "scr_text_slash_scr_text_gml_2810_0");
                global.msg[5] = stringsetloc("* (Your violence against a single Rudinn was forgiven!)/%", "scr_text_slash_scr_text_gml_2811_0");
                global.flag[43] = global.flag[43] - global.flag[523];
                
                if (global.flag[43] < 0)
                    global.flag[43] = 0;
                
                normal_kills = global.flag[520] - global.flag[523];
                global.flag[40] = global.flag[40] - normal_kills;
                
                if (global.flag[40] < 0)
                    global.flag[40] = 0;
                
                global.flag[243] = 1;
            }
            else
            {
                scr_susface(0, 1);
                global.msg[1] = stringsetloc("* Heh^1, you wanna act that way^1, huh...?/", "scr_text_slash_scr_text_gml_2823_0");
                global.msg[2] = stringsetloc("\\E3* Forgive me or I'll crush you^1, dweeb!!/", "scr_text_slash_scr_text_gml_2824_0");
                scr_noface(3);
                global.msg[4] = string("* I..^1. I'm sorry!!^1! I forgive you!!^1! Here^1, take {0}!/%", scr_ap_get_location_reward_text(10))
                scr_checkspot(10);
                
                if (noroom == 1)
                {
                    scr_ralface(5, 6);
                    global.msg[6] = stringsetloc("* I'm sorry^1, but we don't have any room.../", "scr_text_slash_scr_text_gml_2832_0");
                    scr_susface(7, 2);
                    global.msg[8] = stringsetloc("* Too late^1, I already ate it./%", "scr_text_slash_scr_text_gml_2834_0");
                }
                
                global.flag[243] = 2;
            }
            
            break;
        
        case 430:
            global.choicemsg[0] = stringsetloc(" #Listen", "scr_text_slash_scr_text_gml_2841_0");
            global.choicemsg[1] = stringsetloc(" #Do Not", "scr_text_slash_scr_text_gml_2842_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2845_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2846_0");
            global.msg[0] = stringsetloc("* (It's a music player.^1)&* (Listen to the contents?)/", "scr_text_slash_scr_text_gml_2845_0");
            global.msg[1] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_2848_0");
            break;
        
        case 431:
            if (global.choice == 0)
            {
                snd_play(snd_splat);
                global.msg[0] = stringsetloc("* (...)/", "scr_text_slash_scr_text_gml_2853_0");
                global.msg[1] = stringsetloc("* (It's full of cartoon splat noises.)/%", "scr_text_slash_scr_text_gml_2854_0");
            }
            else
            {
                global.msg[0] = stringsetloc("* (You did not listen.)/%", "scr_text_slash_scr_text_gml_2858_0");
            }
            
            break;
        
        case 435:
            global.choicemsg[0] = stringsetloc(" #Prison B1", "scr_text_slash_scr_text_gml_2863_0");
            global.choicemsg[1] = stringsetloc(" #Floor 1F", "scr_text_slash_scr_text_gml_2864_0");
            global.choicemsg[2] = stringsetloc("??????", "scr_text_slash_scr_text_gml_2865_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2868_0_b");
            global.msg[0] = stringsetloc("* (Where will you ride the elevator to?)/", "scr_text_slash_scr_text_gml_2867_0");
            global.msg[1] = stringsetloc("\\C3", "scr_text_slash_scr_text_gml_2868_0");
            break;
        
        case 436:
            global.msg[0] = stringsetloc("%%", "scr_text_slash_scr_text_gml_2874_0");
            
            if (global.choice == 0)
            {
                if (global.flag[239] != 0)
                {
                    with (obj_elevatorcontroller)
                    {
                        if (global.flag[239] == 1)
                        {
                            dir = -1;
                            newcno = 0;
                            con = 100;
                        }
                        else
                        {
                            dir = 1;
                            newcno = 0;
                            con = 100;
                        }
                    }
                }
                else
                {
                    global.msg[0] = stringsetloc("* (You're there.)/%", "scr_text_slash_scr_text_gml_2893_0");
                }
            }
            
            if (global.choice == 1)
            {
                if (global.flag[239] != 1)
                {
                    with (obj_elevatorcontroller)
                    {
                        dir = 1;
                        newcno = 1;
                        con = 100;
                    }
                }
                else
                {
                    global.msg[0] = stringsetloc("* (You're there.)/%", "scr_text_slash_scr_text_gml_2909_0");
                }
            }
            
            if (global.choice == 2)
            {
                if (global.flag[239] != 3)
                {
                    with (obj_elevatorcontroller)
                    {
                        dir = -1;
                        newcno = 3;
                        con = 100;
                    }
                }
                else
                {
                    global.msg[0] = stringsetloc("* (You're there.)/%", "scr_text_slash_scr_text_gml_2925_0");
                }
            }
            
            break;
        
        case 440:
            global.choicemsg[0] = stringsetloc(" #Ride", "scr_text_slash_scr_text_gml_2934_0");
            global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_2935_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2938_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2939_0_b");
            global.msg[0] = stringsetloc("* (Ride the elevator?)/", "scr_text_slash_scr_text_gml_2938_0");
            global.msg[1] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_2939_0");
            break;
        
        case 441:
            global.msg[0] = stringsetloc("%%", "scr_text_slash_scr_text_gml_2945_0");
            
            if (global.choice == 0)
            {
                with (obj_elevatorcontroller)
                {
                    if (global.flag[239] == 1)
                    {
                        dir = 1;
                        newcno = 2;
                        con = 100;
                    }
                    else
                    {
                        dir = -1;
                        newcno = 1;
                        con = 100;
                    }
                }
            }
            
            break;
        
        case 445:
            global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_2966_0");
            global.choicemsg[1] = stringsetloc(" #Don't", "scr_text_slash_scr_text_gml_2967_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2970_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_2971_0");
            global.typer = 30;
            global.fc = 1;
            global.fe = 0;
            global.msg[0] = stringsetloc("\\E0* Hey Kris./", "scr_text_slash_scr_text_gml_2973_0");
            global.msg[1] = stringsetloc("\\E0* W..^1. wait a second./", "scr_text_slash_scr_text_gml_2974_0");
            global.msg[2] = stringsetloc("\\E3* Ummm^1, I.../", "scr_text_slash_scr_text_gml_2975_0");
            global.msg[3] = stringsetloc("\\E1* Look./", "scr_text_slash_scr_text_gml_2976_0");
            global.msg[4] = stringsetloc("\\E2* I know you wanna give a REAL goodbye to everyone^1, right?/", "scr_text_slash_scr_text_gml_2977_0");
            global.msg[5] = stringsetloc("\\E3* I mean, I'm ALL for leaving right away^1, but.../", "scr_text_slash_scr_text_gml_2978_0");
            global.msg[6] = stringsetloc("\\E2* Y'know, we could go back a sec^1. If you wanted./", "scr_text_slash_scr_text_gml_2979_0");
            global.msg[7] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_2980_0");
            break;
        
        case 446:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E2* Well^1, then what are we waiting for?/", "scr_text_slash_scr_text_gml_2986_0");
                global.msg[1] = stringsetloc("\\E9* Let's head back!/%", "scr_text_slash_scr_text_gml_2987_0");
            }
            else
            {
                global.msg[0] = stringsetloc("\\E4* C'mon^1, don't lie!/", "scr_text_slash_scr_text_gml_2991_0");
                global.msg[1] = stringsetloc("\\E9* Let's at least say goodbye to Lancer!/%", "scr_text_slash_scr_text_gml_2992_0");
            }
            
            break;
        
        case 450:
            global.choicemsg[0] = stringsetloc(" #Let's Fight", "scr_text_slash_scr_text_gml_2998_0");
            global.choicemsg[1] = stringsetloc(" #Let's Not", "scr_text_slash_scr_text_gml_2999_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3002_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3003_0_b");
            global.msg[0] = stringsetloc("* If you can beat me^1, I'll go back to being a good guy./", "scr_text_slash_scr_text_gml_3002_0");
            global.msg[1] = stringsetloc("\\E0* But if you LOSE.../", "scr_text_slash_scr_text_gml_3003_0");
            global.msg[2] = stringsetloc("\\E2* YOU guys will have to become bad guys with US.../", "scr_text_slash_scr_text_gml_3004_0");
            global.msg[3] = stringsetloc("\\E4* ... and do WHATEVER we say./", "scr_text_slash_scr_text_gml_3005_0");
            scr_lanface(4, 1);
            global.msg[5] = stringsetloc("* Ho ho ho!!^1! Our wish is your command!!!/", "scr_text_slash_scr_text_gml_3007_0");
            scr_susface(6, 1);
            global.msg[7] = stringsetloc("\\E1* So^1, whaddya say...?/", "scr_text_slash_scr_text_gml_3010_0");
            global.msg[8] = stringsetloc("\\C2", "scr_text_slash_scr_text_gml_3011_0");
            break;
        
        case 451:
            global.msg[0] = stringsetloc("* Eh^1, don't bother answering./", "scr_text_slash_scr_text_gml_3015_0");
            global.msg[1] = stringsetloc("\\E2* We were just gonna thrash you anyway^1, so.../", "scr_text_slash_scr_text_gml_3016_0");
            global.msg[2] = stringsetloc("\\E3* See ya!/%", "scr_text_slash_scr_text_gml_3017_0");
            break;
        
        case 455:
            global.choicemsg[0] = stringsetloc(" #Me", "scr_text_slash_scr_text_gml_3022_0");
            global.choicemsg[1] = stringsetloc(" #Asriel", "scr_text_slash_scr_text_gml_3023_0");
            global.choicemsg[2] = stringsetloc("Pie", "scr_text_slash_scr_text_gml_3024_0");
            
            if (scr_litemcheck(4))
                global.choicemsg[2] = stringsetloc("Flowers", "scr_text_slash_scr_text_gml_3025_0");
            
            global.choicemsg[3] = stringsetloc("Nevermind", "scr_text_slash_scr_text_gml_3026_0");
            global.msg[0] = stringsetloc("* Kris^1? What is it^1, honey?/", "scr_text_slash_scr_text_gml_3027_0");
            global.msg[1] = stringsetloc("\\C4 ", "scr_text_slash_scr_text_gml_3028_0");
            break;
        
        case 456:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("\\E0* Kris^1, honey^1, you have grown up so much.../", "scr_text_slash_scr_text_gml_3036_0_b");
                global.msg[1] = stringsetloc("\\E9* Someday soon you will be going off to university as well.../", "scr_text_slash_scr_text_gml_3037_0");
                global.msg[2] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_3036_0");
                global.msg[3] = stringsetloc("\\E9* Remember when you were little.../", "scr_text_slash_scr_text_gml_3039_0");
                global.msg[4] = stringsetloc("\\E8* You asked when your horns were going to grow in?/", "scr_text_slash_scr_text_gml_3040_0");
                global.msg[5] = stringsetloc("\\E0* So we bought that headband with the little red horns on it./", "scr_text_slash_scr_text_gml_3041_0");
                global.msg[6] = stringsetloc("\\E4* Oh^1, you wore it for months! Whatever happened to it?/%", "scr_text_slash_scr_text_gml_3042_0");
            }
            
            if (global.choice == 1)
            {
                global.msg[0] = stringsetloc("\\E9* Remember that video-game you and Asriel used to play?/", "scr_text_slash_scr_text_gml_3044_0");
                global.msg[1] = stringsetloc("\\E1* What was it called...^1? Super Smashing Fighters?/", "scr_text_slash_scr_text_gml_3045_0");
                global.msg[2] = stringsetloc("\\E0* When he was very little^1, he LOVED the green lizard from that./", "scr_text_slash_scr_text_gml_3046_0");
                global.msg[3] = stringsetloc("\\E9* We even had a birthday party for him themed around it./", "scr_text_slash_scr_text_gml_3047_0");
                global.msg[4] = stringsetloc("\\E0* Your father painted all these eggs with spots as decoration.../", "scr_text_slash_scr_text_gml_3048_0");
                global.msg[5] = stringsetloc("\\E9* Oh^1, your brother LOVED it...!/", "scr_text_slash_scr_text_gml_3049_0");
                global.msg[6] = stringsetloc("\\E5* Until the next day^1, your father cooked them all for breakfast./", "scr_text_slash_scr_text_gml_3050_0");
                global.msg[7] = stringsetloc("\\E8* Your brother just kept crying.../", "scr_text_slash_scr_text_gml_3051_0");
                global.msg[8] = stringsetloc("\\E4* Ever since^1, he's hated that book about eating green eggs!/%", "scr_text_slash_scr_text_gml_3052_0");
            }
            
            if (global.choice == 2)
            {
                global.msg[0] = stringsetloc("\\E1* Kris^1, since only you and I are living here right now.../", "scr_text_slash_scr_text_gml_3056_0");
                global.msg[1] = stringsetloc("\\E9* It feels..^1. just a bit lonely^1, does it not...?/", "scr_text_slash_scr_text_gml_3057_0");
                global.msg[2] = stringsetloc("\\E0* But^1, fortunately^1, sharing a warm^1, freshly-made pie,/", "scr_text_slash_scr_text_gml_3058_0");
                global.msg[3] = stringsetloc("\\E9* Is the perfect cure for such a condition./", "scr_text_slash_scr_text_gml_3059_0");
                global.msg[4] = stringsetloc("\\E5* ... as long as I get to eat some^1, of course./%", "scr_text_slash_scr_text_gml_3060_0");
                
                if (scr_litemcheck(4))
                {
                    global.msg[0] = stringsetloc("\\E8* Oh^1, Kris...^1? Flowers^1? For your mother...?/", "scr_text_slash_scr_text_gml_3064_0");
                    global.msg[1] = stringsetloc("\\E9* How sweet.../", "scr_text_slash_scr_text_gml_3065_0");
                    global.msg[2] = stringsetloc("\\E9* .../", "scr_text_slash_scr_text_gml_3066_0");
                    global.msg[3] = stringsetloc("\\E5* These are from HIM^1, are they not./", "scr_text_slash_scr_text_gml_3067_0");
                    global.msg[4] = stringsetloc("\\E1* .../", "scr_text_slash_scr_text_gml_3070_0_b");
                    global.msg[5] = stringsetloc("\\E0* Err^1, well^1, worry not^1, Kris^1, I will.../", "scr_text_slash_scr_text_gml_3069_0");
                    global.msg[6] = stringsetloc("\\E5* ... find some place for them./%", "scr_text_slash_scr_text_gml_3070_0");
                    scr_litemremove(4);
                    global.flag[262] = 3;
                }
            }
            
            if (global.choice == 3)
            {
                global.msg[0] = stringsetloc("\\E1* Kris^1, perhaps you should go to bed early tonight.../", "scr_text_slash_scr_text_gml_3078_0");
                global.msg[1] = stringsetloc("* You do not look quite yourself./%", "scr_text_slash_scr_text_gml_3079_0");
            }
            
            break;
        
        case 460:
            global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3083_0");
            global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3084_0");
            global.choicemsg[2] = "";
            global.choicemsg[3] = "";
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3087_0");
            global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3088_0");
            
            if (global.customflags[5] == 1)
            {
                global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3092_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3093_0");
            }
            
            if (global.plot >= 154)
            {
                global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3097_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3098_0");
            }
            
            break;
        
        case 461:
            global.msg[0] = stringsetloc("* (But nothing happened.)/%", "scr_text_slash_scr_text_gml_3104_0");
            
            if (global.choice == 0)
            {
                with (obj_shortcut_door)
                    door_destination = room_field3;
            }
            
            if (global.choice == 1)
            {
                with (obj_shortcut_door)
                    door_destination = room_forest_savepoint1;
            }
            
            if (global.choice == 2)
            {
                with (obj_shortcut_door)
                    door_destination = room_forest_savepoint2;
            }
            
            if (global.choice == 3)
            {
                with (obj_shortcut_door)
                    door_destination = room_forest_fightsusie;
            }
            
            with (obj_shortcut_door)
            {
                if (door_destination == door_location)
                {
                    global.msg[0] = stringsetloc("* (Amazingly^1, you are already there.)/%", "scr_text_slash_scr_text_gml_3125_0");
                }
                else
                {
                    global.msg[0] = stringsetloc("* (The door opened...)/%", "scr_text_slash_scr_text_gml_3129_0");
                    con = 50;
                }
            }
            
            break;
        
        case 465:
            global.choicemsg[0] = stringsetloc(" #Give Cake", "scr_text_slash_scr_text_gml_3138_0");
            global.choicemsg[1] = stringsetloc(" #Do not", "scr_text_slash_scr_text_gml_3139_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3142_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3143_0_b");
            global.msg[0] = stringsetloc("* Marga riba^1!&* That cake^1!&* It's seething with power!/", "scr_text_slash_scr_text_gml_3142_0");
            global.msg[1] = stringsetloc("* It's my cake^1, isn't it!^1?&* Did you repair it!^1?&* Will you return it!?/", "scr_text_slash_scr_text_gml_3143_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_3146_0");
            break;
        
        case 466:
            if (global.choice == 0)
            {
                scr_keyitemremove(1004);
                scr_checkspot(11);
                global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3151_0");
                global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3152_0");
                global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3153_0");
                global.writersnd[0] = snd_item;
                global.msg[3] = string("* (You traded the TopCake for {0}.)/", scr_ap_get_location_reward_text(11));
                global.msg[4] = stringsetloc("* Now^1, I'm going to continue to spin and cry^1! Spin and cry!/%", "scr_text_slash_scr_text_gml_3157_0");
                global.flag[253] = 1;
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* Sweet in cake^1, but not in character^1! A tragedy!!/%", "scr_text_slash_scr_text_gml_3162_0");
            
            break;
        
        case 470:
            global.choicemsg[0] = stringsetloc(" #Take Cake", "scr_text_slash_scr_text_gml_3167_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_3168_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3171_0");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3172_0");
            
            global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3173_0");
            
            break;
        
        case 471:
            if (global.choice == 0)
            {
                global.msg[0] = stringsetloc("* Please take this cake^1! It's worthless^1, my dear friend!/", "scr_text_slash_scr_text_gml_3187_0");
                global.writersnd[0] = snd_item;
                global.msg[1] = stringsetloc("\\S0* (You got the SpinCake.)/%", "scr_text_slash_scr_text_gml_3189_0");
                
                if (noroom == 1)
                    global.msg[0] = stringsetloc("* Mama shiba^1! You're carrying too many things that aren't cakes!/%", "scr_text_slash_scr_text_gml_3192_0");
            }
            
            if (global.choice == 1)
                global.msg[0] = stringsetloc("* I understand!^1! Too much cake will make you spin and cry!!/%", "scr_text_slash_scr_text_gml_3197_0");
            
            break;
        
        case 600:
            global.choicemsg[0] = stringsetloc(" #Yes", "scr_text_slash_scr_text_gml_3202_0");
            global.choicemsg[1] = stringsetloc(" #No", "scr_text_slash_scr_text_gml_3205_0");
            global.choicemsg[2] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3206_0_b");
            global.choicemsg[3] = stringsetloc(" ", "scr_text_slash_scr_text_gml_3207_0_b");
            global.msg[0] = stringsetloc("* (Well^1, there is a man here.)/", "scr_text_slash_scr_text_gml_3206_0");
            global.msg[1] = stringsetloc("* (He offered you something.)/", "scr_text_slash_scr_text_gml_3207_0");
            global.msg[2] = stringsetloc("\\C2 ", "scr_text_slash_scr_text_gml_3210_0");
            break;
        
        case 601:
            global.flag[910] = 2;
            
            if (global.choice == 0)
            {
                global.msg[0] = string("* (He sent {0} to your Multiworld.)/%", scr_ap_get_location_reward_text(24));
                snd_play(snd_egg);
                scr_checkspot(24);
            }
            else
            {
                global.msg[0] = "* (Then he needn't be here.)/";
                global.msg[1] = "\\s0* (It seems you won't be able to get this check anymore... )/%";
            }
            
            break;
        
        default:
            break;
    }
}
