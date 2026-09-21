/// FUNCTIONS

function AP_restart_musicer()
{
    var _musicer = 0;

#if CHAPTER_1
    if (i_ex(obj_musicer_darkcliff))
        _musicer = obj_musicer_darkcliff;
    
    if (i_ex(obj_musicer_town))
        _musicer = obj_musicer_town;
    
    if (i_ex(obj_musicer_field))
        _musicer = obj_musicer_field;
    
    if (i_ex(obj_musicer_forest))
        _musicer = obj_musicer_forest;
    
    if (i_ex(obj_musicer_quietforest))
        _musicer = obj_musicer_quietforest;
    
    if (i_ex(obj_musicer_man))
        _musicer = obj_musicer_man;
    
    if (i_ex(obj_musicer_darkcastle))
        _musicer = obj_musicer_darkcastle;
    
    if (i_ex(obj_musicer_bird))
        _musicer = obj_musicer_bird;
#elsif CHAPTER_2
    if (i_ex(obj_musicer_darkcastle))
        _musicer = obj_musicer_darkcastle;
    
    if (i_ex(obj_musicer_cyber))
        _musicer = obj_musicer_cyber;
    
    if (i_ex(obj_musicer_mansion))
        _musicer = obj_musicer_mansion;
    
    if (i_ex(obj_musicer_mansion_entrance))
        _musicer = obj_musicer_mansion_entrance;
    
    if (i_ex(obj_musicer_mansion_basement))
        _musicer = obj_musicer_mansion_basement;
    
    if (i_ex(obj_musicer_mansion_top))
        _musicer = obj_musicer_mansion_top;
    
    if (i_ex(obj_musicer_conbini))
        _musicer = obj_musicer_conbini;
    
    if (i_ex(obj_musicer_room))
        _musicer = obj_musicer_room;
    
    if (i_ex(obj_musicer_city))
        _musicer = obj_musicer_city;
    
    if (i_ex(obj_musicer_town))
        _musicer = obj_musicer_town;
    
    if (i_ex(obj_musicer_field))
        _musicer = obj_musicer_field;
    
    if (i_ex(obj_musicer_bird))
        _musicer = obj_musicer_bird;
#elsif CHAPTER_3
    if (i_ex(obj_musicer_gen))
    {
        _musicer = obj_musicer_gen;
        var _song = obj_musicer_gen.song;
        var _plot = obj_musicer_gen.plot;
        var _highplot = obj_musicer_gen.highplot;
        var _volume = obj_musicer_gen.volume;
        var _pitch = obj_musicer_gen.pitch;
    }
    
    if (i_ex(obj_musicer_changing_room))
        _musicer = obj_musicer_changing_room;
    
    if (i_ex(obj_musicer_green_room))
        _musicer = obj_musicer_green_room;
    
    if (i_ex(obj_musicer_b3bs))
        _musicer = obj_musicer_b3bs;
    
    if (i_ex(obj_musicer_teevie))
        _musicer = obj_musicer_teevie;
    
    if (i_ex(obj_musicer_darkcastle))
        _musicer = obj_musicer_darkcastle;
    
    if (i_ex(obj_musicer_conbini))
        _musicer = obj_musicer_conbini;
    
    if (i_ex(obj_musicer_room))
        _musicer = obj_musicer_room;
    
    if (i_ex(obj_musicer_town))
        _musicer = obj_musicer_town;
    
    if (i_ex(obj_musicer_field))
        _musicer = obj_musicer_field;
    
    if (i_ex(obj_musicer_bird))
        _musicer = obj_musicer_bird;
#elsif CHAPTER_4
    if (i_ex(obj_musicer_darkcastle))
        _musicer = obj_musicer_darkcastle;
    
    if (i_ex(obj_musicer_gen))
    {
        _musicer = obj_musicer_gen;
        var _song = obj_musicer_gen.song;
        var _plot = obj_musicer_gen.plot;
        var _highplot = obj_musicer_gen.highplot;
        var _volume = obj_musicer_gen.volume;
        var _pitch = obj_musicer_gen.pitch;
    }
    
    if (i_ex(obj_musicer_dw_titan_climb))
        _musicer = obj_musicer_dw_titan_climb;
    
    if (i_ex(obj_musicer_noellehouse))
        _musicer = obj_musicer_noellehouse;
    
    if (i_ex(obj_musicer_dw_church3))
        _musicer = obj_musicer_dw_church3;
    
    if (i_ex(obj_musicer_dw_church2))
        _musicer = obj_musicer_dw_church2;
    
    if (i_ex(obj_musicer_torhouse))
        _musicer = obj_musicer_torhouse;
    
    if (i_ex(obj_musicer_dw_church))
        _musicer = obj_musicer_dw_church;
    
    if (i_ex(obj_musicer_dw_gerson_study))
        _musicer = obj_musicer_dw_gerson_study;
    
    if (i_ex(obj_musicer_darkcastle))
        _musicer = obj_musicer_darkcastle;
    
    if (i_ex(obj_musicer_conbini))
        _musicer = obj_musicer_conbini;
    
    if (i_ex(obj_musicer_room))
        _musicer = obj_musicer_room;
    
    if (i_ex(obj_musicer_town))
        _musicer = obj_musicer_town;
    
    if (i_ex(obj_musicer_field))
        _musicer = obj_musicer_field;
    
    if (i_ex(obj_musicer_bird))
        _musicer = obj_musicer_bird;
    
    if (i_ex(obj_musicer_castletown_queen))
        _musicer = obj_musicer_castletown_queen;
    
    if (i_ex(obj_musicer_castletown_cafe))
        _musicer = obj_musicer_castletown_cafe;
#elsif CHAPTER_5
    if (i_ex(obj_musicer_darkcastle))
        _musicer = obj_musicer_darkcastle;
    
    if (i_ex(obj_musicer_gen))
    {
        _musicer = obj_musicer_gen;
        var _song = obj_musicer_gen.song;
        var _plot = obj_musicer_gen.plot;
        var _highplot = obj_musicer_gen.highplot;
        var _volume = obj_musicer_gen.volume;
        var _pitch = obj_musicer_gen.pitch;
    }
    
    if (i_ex(obj_musicer_garden))
        _musicer = obj_musicer_garden;
    
    if (i_ex(obj_musicer_bird_new))
        _musicer = obj_musicer_bird_new;
    
    if (i_ex(obj_musicer_conbini))
        _musicer = obj_musicer_conbini;
    
    if (i_ex(obj_musicer_room))
        _musicer = obj_musicer_room;
    
    if (i_ex(obj_musicer_town))
        _musicer = obj_musicer_town;
    
    if (i_ex(obj_musicer_field))
        _musicer = obj_musicer_field;
    
    if (i_ex(obj_musicer_bird))
        _musicer = obj_musicer_bird;
#endif
    
    instance_destroy(_musicer)
    instance_create(0, 0, _musicer);

#if !CHAPTER_1 && !CHAPTER_2
    if (_musicer == obj_musicer_gen)
    {
        with (obj_musicer_gen)
        {
            song = other._song;
            plot = other._plot;
            highplot = other._highplot;
            volume = other._volume;
            pitch = other._pitch;
        }
    }
#endif
}