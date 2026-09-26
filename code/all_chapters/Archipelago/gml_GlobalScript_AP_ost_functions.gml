/// FUNCTIONS

function AP_set_looptarget(songname, instance_song_id)
{
    switch (songname)
    {
        case "rhythm_3rd_sanctuary_guit.ogg":
            global.AP_rhythm_3rd_sanctuary_guit = instance_song_id;
            return global.AP_rhythm_3rd_sanctuary_guit;
            break;

        case "rhythm_3rd_sanctuary_noguit.ogg":
            global.AP_rhythm_3rd_sanctuary_noguit = instance_song_id;
            return global.AP_rhythm_3rd_sanctuary_noguit;
            break;

        case "kris_piano_lancer_waltz.ogg":
            global.AP_kris_piano_lancer_waltz = instance_song_id;
            return global.AP_kris_piano_lancer_waltz;
            break;

        case "kris_piano_last_prophecy.ogg":
            global.AP_kris_piano_last_prophecy = instance_song_id;
            return global.AP_kris_piano_last_prophecy;
            break;

        case "kris_piano_lower.ogg":
            global.AP_kris_piano_lower = instance_song_id;
            return global.AP_kris_piano_lower;
            break;

        case "kris_piano_prophecy.ogg":
            global.AP_kris_piano_prophecy = instance_song_id;
            return global.AP_kris_piano_prophecy;
            break;

        case "kris_piano_quiz.ogg":
            global.AP_kris_piano_quiz = instance_song_id;
            return global.AP_kris_piano_quiz;
            break;

        case "kris_piano_rouxls.ogg":
            global.AP_kris_piano_rouxls = instance_song_id;
            return global.AP_kris_piano_rouxls;
            break;

        case "kris_piano_sevenfour.ogg":
            global.AP_kris_piano_sevenfour = instance_song_id;
            return global.AP_kris_piano_sevenfour;
            break;
        
        case "kris_piano_shop.ogg":
            global.AP_kris_piano_shop = instance_song_id;
            return global.AP_kris_piano_shop;
            break;

        case "kris_piano_waitingroom.ogg":
            global.AP_kris_piano_waitingroom = instance_song_id;
            return global.AP_kris_piano_waitingroom;
            break;

        default:
            return -1;
            break;
    }
}

function AP_get_looptime(songname)
{
    switch (songname)
    {
        case "rhythm_3rd_sanctuary_guit.ogg":
            return 131;
            break;

        case "rhythm_3rd_sanctuary_noguit.ogg":
            return 131;
            break;

        case "kris_piano_lancer_waltz.ogg":
            return 75.5;
            break;

        case "kris_piano_last_prophecy.ogg":
            return 54;
            break;

        case "kris_piano_lower.ogg":
            return 41;
            break;

        case "kris_piano_prophecy.ogg":
            return 32.5;
            break;

        case "kris_piano_quiz.ogg":
            return 13;
            break;

        case "kris_piano_rouxls.ogg":
            return 47;
            break;

        case "kris_piano_sevenfour.ogg":
            return 66;
            break;
        
        case "kris_piano_shop.ogg":
            return 49;
            break;

        case "kris_piano_waitingroom.ogg":
            return 89;
            break;

        default:
            return -1;
            break;
    }
}

function AP_ost_shuffle_toggle()
{
    var currentsong = mus_get_name(global.currentsong[0]);
    var vol = audio_sound_get_gain(global.currentsong[1]) / global.flag[16];
    var pit = audio_sound_get_pitch(global.currentsong[1]);
    var stop = false;
    
    if (currentsong == "" || !(variable_struct_exists(global.AP_ost_mapping, currentsong)))
    {
        global.AP_ost_shuffle = !global.AP_ost_shuffle;
        exit;
    }
    
    if (global.AP_ost_shuffle)
    {
        var names = variable_struct_get_names(global.AP_ost_mapping);
        
        for (i = 0; i < array_length(names); i++)
        {
            if (names[i] == currentsong)
            {
                currentsong = names[i];
                break;
            }
        }
    }
    
    global.AP_ost_shuffle = !global.AP_ost_shuffle;
    snd_free_all();
    
#if !(CHAPTER_1 || CHAPTER_2)
    if (i_ex(obj_musicer_gen))
    {
        var song = "";
        var plot = 0;
        var highplot = 0;
        var volume = 0;
        var pitch = 0;
        
        var id_list = [];
        
        for (var i = 0; i < instance_number(obj_musicer_gen); i++)
            id_list[i] = instance_find(obj_musicer_gen, i);
        
        for (var i = 0; i < array_length(id_list); i++)
        {
            with (id_list[i])
            {
                other.song = song;
                other.plot = plot;
                other.highplot = highplot;
                other.volume = volume;
                other.pitch = pitch;
                instance_destroy();
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
        
        stop = true;
    }
    
#endif
#if CHAPTER_2
    if (i_ex(obj_musicer_cyber))
    {
        if (room == room_dw_cyber_savepoint)
        {
            if (i_ex(obj_doorA_musfade))
            {
                with (obj_doorA_musfade)
                {
                    door = instance_create(x, y, obj_doorA);
                    door.image_yscale = image_xscale;
                    door.image_yscale = image_yscale;
                    instance_destroy();
                }
            }
        }
        
        instance_destroy(obj_musicer_cyber);
        instance_create(0, 0, obj_musicer_cyber);
        stop = true;
    }
    
#elsif CHAPTER_5
    if (i_ex(obj_setup_music_loop_track))
    {
        var introname = obj_setup_music_loop_track.introname;
        var loopname = obj_setup_music_loop_track.loopname;
        var volume = obj_setup_music_loop_track.volume;
        var pitch = obj_setup_music_loop_track.pitch;
        instance_destroy(obj_setup_music_loop_track);
        mus_2_file_loop(introname, loopname, volume, pitch);
        stop = true;
    }
    
#endif
    if (!stop)
    {
        global.currentsong[0] = snd_init(currentsong);
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], vol, pit);
    }
}
