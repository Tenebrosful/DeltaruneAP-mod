/// FUNCTIONS

function AP_restart_music(song)
{
    snd_free_all();

    if (i_ex(obj_musicer_town))
        AP_restart_musicer(obj_musicer_town);
    
    if (i_ex(obj_musicer_field))
        AP_restart_musicer(obj_musicer_field);
    
    if (i_ex(obj_musicer_bird))
        AP_restart_musicer(obj_musicer_bird);
    
    if (i_ex(obj_musicer_darkcastle))
        AP_restart_musicer(obj_musicer_darkcastle);
    
#if !CHAPTER_1
    if (i_ex(obj_musicer_conbini))
        AP_restart_musicer(obj_musicer_conbini);
    
    if (i_ex(obj_musicer_room))
        AP_restart_musicer(obj_musicer_room);
    
#endif
#if !CHAPTER_1 && !CHAPTER_2
    if (i_ex(obj_musicer_gen))
        AP_restart_musicer(obj_musicer_gen);
    
#endif
#if CHAPTER_1
    if (i_ex(obj_musicer_darkcliff))
        AP_restart_musicer(obj_musicer_darkcliff);
    
    if (i_ex(obj_musicer_forest))
        AP_restart_musicer(obj_musicer_forest);
    
    if (i_ex(obj_musicer_quietforest))
        AP_restart_musicer(obj_musicer_quietforest);
    
    if (room == room_man)
    {
        global.currentsong[0] = snd_init("man.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
    }
#elsif CHAPTER_2
    if (i_ex(obj_musicer_cyber))
        AP_restart_musicer(obj_musicer_cyber);
    
    if (i_ex(obj_musicer_mansion))
        AP_restart_musicer(obj_musicer_mansion);
    
    if (i_ex(obj_musicer_mansion_entrance))
        AP_restart_musicer(obj_musicer_mansion_entrance);
    
    if (i_ex(obj_musicer_mansion_basement))
        AP_restart_musicer(obj_musicer_mansion_basement);
    
    if (i_ex(obj_musicer_mansion_top))
        AP_restart_musicer(obj_musicer_mansion_top);
    
    if (i_ex(obj_musicer_city))
        AP_restart_musicer(obj_musicer_city);
#elsif CHAPTER_3
    if (i_ex(obj_musicer_changing_room))
        AP_restart_musicer(obj_musicer_changing_room);
    
    if (i_ex(obj_musicer_green_room))
        AP_restart_musicer(obj_musicer_green_room);
    
    if (i_ex(obj_musicer_teevie))
        AP_restart_musicer(obj_musicer_teevie);
    
    if (i_ex(obj_musicer_b3bs))
        AP_restart_musicer(obj_musicer_b3bs);
#elsif CHAPTER_4
    if (i_ex(obj_musicer_dw_titan_climb))
        AP_restart_musicer(obj_musicer_dw_titan_climb);
    
    if (i_ex(obj_musicer_noellehouse))
        AP_restart_musicer(obj_musicer_noellehouse);
    
    if (i_ex(obj_musicer_dw_church3))
        AP_restart_musicer(obj_musicer_dw_church3);
    
    if (i_ex(obj_musicer_dw_church2))
        AP_restart_musicer(obj_musicer_dw_church2);
    
    if (i_ex(obj_musicer_torhouse))
        AP_restart_musicer(obj_musicer_torhouse);
    
    if (i_ex(obj_musicer_dw_church))
        AP_restart_musicer(obj_musicer_dw_church);
    
    if (i_ex(obj_musicer_dw_gerson_study))
        AP_restart_musicer(obj_musicer_dw_gerson_study);
    
    if (i_ex(obj_musicer_castletown_queen))
        AP_restart_musicer(obj_musicer_castletown_queen);
    
    if (i_ex(obj_musicer_castletown_cafe))
        AP_restart_musicer(obj_musicer_castletown_cafe);
#elsif CHAPTER_5
    if (i_ex(obj_musicer_garden))
        AP_restart_musicer(obj_musicer_garden);
    
    if (i_ex(obj_musicer_bird_new))
        AP_restart_musicer(obj_musicer_bird_new);
#endif
}

function AP_restart_musicer(musicer)
{
#if CHAPTER_1 || CHAPTER_2
    instance_destroy(musicer);
    instance_create(0, 0, musicer);
#else
    if (musicer == obj_musicer_gen)
    {
        var song = 0;
        var plot = 0;
        var highplot = 0;
        var volume = 0;
        var pitch = 0;
        
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
                    other.song = song;
                    other.plot = plot;
                    other.highplot = highplot;
                    other.volume = volume;
                    other.pitch = pitch;
                    instance_destroy();
                }
            }
            
            var gen = instance_create(0, 0, obj_musicer_gen);
            
            with (gen)
            {
                song = other.song;
                plot = other.plot;
                highplot = other.highplot;
                volume = other.volume;
                pitch = other.pitch;
            }
        }
    }
    else
    {
        instance_destroy(musicer);
        instance_create(0, 0, musicer);
    }
#endif
}