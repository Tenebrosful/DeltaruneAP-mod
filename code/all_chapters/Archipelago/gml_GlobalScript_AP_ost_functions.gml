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
