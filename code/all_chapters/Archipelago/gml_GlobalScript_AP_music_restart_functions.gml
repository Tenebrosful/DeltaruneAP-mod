/// FUNCTIONS

function AP_ost_shuffle_toggle()
{
    var currentsong = mus_get_name(global.currentsong[0]);
    var vol = audio_sound_get_gain(global.currentsong[1]) * global.flag[16];
    var pitch = audio_sound_get_pitch(global.currentsong[1]);
    
    if (global.AP_ost_shuffle)
    {
        var names = variable_struct_get_names(global.AP_ost_mapping);
        
        for (i = 0; i < array_length(names); i++)
        {
            if (names[i] == currentsong)
            {
                currentsong == names[i];
                break;
            }
        }
    }
    
    global.AP_ost_shuffle = !global.AP_ost_shuffle;
    ini_open(AP_get_save_folder_prefix() + "settings_override.ini");
    ini_write_real("ARCHIPELAGO", "OST_SHUFFLE", global.AP_ost_shuffle);
    ini_close();
    snd_free_all();

    if (i_ex(obj_musicer_town))
    {
        instance_destroy(obj_musicer_town);
        instance_create(0, 0, obj_musicer_town);
        exit;
    }
    
    if (i_ex(obj_musicer_field))
    {
        instance_destroy(obj_musicer_field);
        instance_create(0, 0, obj_musicer_field);
        exit;
    }
    
    if (i_ex(obj_musicer_bird))
    {
        instance_destroy(obj_musicer_bird);
        instance_create(0, 0, obj_musicer_bird);
        exit;
    }
    
    if (i_ex(obj_musicer_darkcastle))
    {
        instance_destroy(obj_musicer_darkcastle);
        instance_create(0, 0, obj_musicer_darkcastle);
        exit;
    }
    
#if !CHAPTER_1
    if (i_ex(obj_musicer_conbini))
    {
        instance_destroy(obj_musicer_conbini);
        instance_create(0, 0, obj_musicer_conbini);
        exit;
    }
    
    if (i_ex(obj_musicer_room))
    {
        instance_destroy(obj_musicer_room);
        instance_create(0, 0, obj_musicer_room);
        exit;
    }
    
#endif
#if !CHAPTER_1 && !CHAPTER_2
    if (i_ex(obj_musicer_gen))
    {
        var song = [];
        var plot = [];
        var highplot = [];
        var volume = [];
        var pitch = [];
        
        var id_list = [];
        
        for (var i = 0; i < instance_number(obj_musicer_gen); i++)
        {
            id_list[i] = instance_find(obj_musicer_gen, i);
        }
        
        for (var i = 0; i < array_length(id_list); i++)
        {
            with (obj_musicer_gen)
            {
                if (id == other.id_list[i])
                {
                    other.song[i] = song;
                    other.plot[i] = plot;
                    other.highplot[i] = highplot;
                    other.volume[i] = volume;
                    other.pitch[i] = pitch;
                    instance_destroy();

                    var gen = instance_create(0, 0, obj_musicer_gen);
            
                    with (gen)
                    {
                        song = other.song[i];
                        plot = other.plot[i];
                        highplot = other.highplot[i];
                        volume = other.volume[i];
                        pitch = other.pitch[i];
                    }
                }
            }
        }
        exit;
    }
    
#endif
#if CHAPTER_1
    if (i_ex(obj_musicer_darkcliff))
    {
        instance_destroy(obj_musicer_darkcliff);
        instance_create(0, 0, obj_musicer_darkcliff);
        exit;
    }
    
    if (i_ex(obj_musicer_forest))
    {
        instance_destroy(obj_musicer_forest);
        instance_create(0, 0, obj_musicer_forest);
        exit;
    }
    
    if (i_ex(obj_musicer_quietforest))
    {
        instance_destroy(obj_musicer_quietforest);
        instance_create(0, 0, obj_musicer_quietforest);
        exit;
    }
#elsif CHAPTER_2
    if (i_ex(obj_musicer_cyber))
    {
        instance_destroy(obj_musicer_cyber);
        instance_create(0, 0, obj_musicer_cyber);
        exit;
    }
    
    if (i_ex(obj_musicer_mansion))
    {
        instance_destroy(obj_musicer_mansion);
        instance_create(0, 0, obj_musicer_mansion);
        exit;
    }
    
    if (i_ex(obj_musicer_mansion_entrance))
    {
        instance_destroy(obj_musicer_mansion_entrance);
        instance_create(0, 0, obj_musicer_mansion_entrance);
        exit;
    }
    
    if (i_ex(obj_musicer_mansion_basement))
    {
        instance_destroy(obj_musicer_mansion_basement);
        instance_create(0, 0, obj_musicer_mansion_basement);
        exit;
    }
    
    if (i_ex(obj_musicer_mansion_top))
    {
        instance_destroy(obj_musicer_mansion_top);
        instance_create(0, 0, obj_musicer_mansion_top);
        exit;
    }
    
    if (i_ex(obj_musicer_city))
    {
        instance_destroy(obj_musicer_city);
        instance_create(0, 0, obj_musicer_city);
        exit;
    }
#elsif CHAPTER_3
    if (i_ex(obj_musicer_changing_room))
    {
        instance_destroy(obj_musicer_changing_room);
        instance_create(0, 0, obj_musicer_changing_room);
        exit;
    }
    
    if (i_ex(obj_musicer_green_room))
    {
        instance_destroy(obj_musicer_green_room);
        instance_create(0, 0, obj_musicer_green_room);
        exit;
    }
    
    if (i_ex(obj_musicer_teevie))
    {
        instance_destroy(obj_musicer_teevie);
        instance_create(0, 0, obj_musicer_teevie);
        exit;
    }
    
    if (i_ex(obj_musicer_b3bs))
    {
        instance_destroy(obj_musicer_b3bs);
        instance_create(0, 0, obj_musicer_b3bs);
        exit;
    }
#elsif CHAPTER_4
    if (i_ex(obj_musicer_dw_titan_climb))
    {
        instance_destroy(obj_musicer_dw_titan_climb);
        instance_create(0, 0, obj_musicer_dw_titan_climb);
        exit;
    }
    
    if (i_ex(obj_musicer_noellehouse))
    {
        instance_destroy(obj_musicer_noellehouse);
        instance_create(0, 0, obj_musicer_noellehouse);
        exit;
    }
    
    if (i_ex(obj_musicer_dw_church3))
    {
        instance_destroy(obj_musicer_dw_church3);
        instance_create(0, 0, obj_musicer_dw_church3);
        exit;
    }
    
    if (i_ex(obj_musicer_dw_church2))
    {
        instance_destroy(obj_musicer_dw_church2);
        instance_create(0, 0, obj_musicer_dw_church2);
        exit;
    }
    
    if (i_ex(obj_musicer_torhouse))
    {
        instance_destroy(obj_musicer_torhouse);
        instance_create(0, 0, obj_musicer_torhouse);
        exit;
    }
    
    if (i_ex(obj_musicer_dw_church))
    {
        instance_destroy(obj_musicer_dw_church);
        instance_create(0, 0, obj_musicer_dw_church);
        exit;
    }
    
    if (i_ex(obj_musicer_dw_gerson_study))
    {
        instance_destroy(obj_musicer_dw_gerson_study);
        instance_create(0, 0, obj_musicer_dw_gerson_study);
        exit;
    }
    
    if (i_ex(obj_musicer_castletown_queen))
    {
        instance_destroy(obj_musicer_castletown_queen);
        instance_create(0, 0, obj_musicer_castletown_queen);
        exit;
    }
    
    if (i_ex(obj_musicer_castletown_cafe))
    {
        instance_destroy(obj_musicer_castletown_cafe);
        instance_create(0, 0, obj_musicer_castletown_cafe);
        exit;
    }
#elsif CHAPTER_5
    if (i_ex(obj_musicer_garden))
    {
        instance_destroy(obj_musicer_garden);
        instance_create(0, 0, obj_musicer_garden);
        exit;
    }
    
    if (i_ex(obj_musicer_bird_new))
    {
        instance_destroy(obj_musicer_bird_new);
        instance_create(0, 0, obj_musicer_bird_new);
        exit;
    }
#endif
    
    global.currentsong[0] = snd_init(currentsong);
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], vol, pitch);
}
