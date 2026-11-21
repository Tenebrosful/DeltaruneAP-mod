/// IMPORT
trackpos = 0;
last_trackpos = 0;
safety_timer = 0;
songname = "pink.ogg";
song_length = 184.666;
notetime = [];
noteend = [];
maxnote = 0;
bpm = 180;
ftime = [];
fend = [];

if (global.AP_ost_shuffle)
{
    songname = mus_get_name(global.batmusic[0]);
    song_length = audio_sound_length(global.batmusic[0]);
}

AP_load_song(songname);

switch (songname)
{
    case "pink.ogg":
        ftime = [40, 106.67];
        fend = [74.67, 184];
        break;
    
    case "Flowerman_Arrangement.ogg":
        ftime = [22, 142];
        fend = [73, 192.01];
        break;
    
    case "ch3_karaoke_full.ogg":
    case "ch3_karaoke_no_guitar.ogg":
        ftime = [];
        fend = [];
        break;

    case "tenna_battle.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "dontforget.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "bird.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "THE_HOLY.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "cybercity.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "cybercity_old.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "spamton_meeting.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "spamton_battle.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "mansion.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "acid_tunnel.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "rouxls_battle.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "spamton_neo_mix_ex_wip.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "ch2_credits.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "knight.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "church_hymn.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "church_wip.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "second_church.ogg":
    case "church_zone2_alt_longer_test.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "church_zone3.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "titan_pre.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "titan_tower.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "dark_place.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "the_dark_truth.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "titan_spawn.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "titan_battle.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "ch4_credits.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "4rd_sanctuary.ogg":
    case "4rd_sanctuary_noguit.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "catti_confession.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "bratty_confession.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "birds_ch5.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "flowery_iog_extended.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "flowery_iog.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "kikky_upgrade.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "happy_town.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "flashback_excerpt.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "ch5_weird_monologue_deep.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "ch5_weird_monologue.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "dogroom.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "inukuma_wip.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "jitterbug.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "jitterbug_muffled.ogg":
        ftime = [];
        fend = [];
        break;
    
    case "rhythm_3rd_sanctuary_guit.ogg":
    case "rhythm_3rd_sanctuary_noguit.ogg":
        ftime = [];
        fend = [];
        break;
}

findex = 0;
fcount = array_length(ftime);
length_string = scr_string_format_time(song_length, 2);
noteindex = 0;
lipsync = false;
laststate = false;
singing = false;
note_buffer = 1/30;
looped = false;
init = false;
debug = false;
depth = obj_pink_enemy.depth + 1000;
update_sprite = false;
