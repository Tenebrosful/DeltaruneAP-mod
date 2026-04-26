/// IMPORT
function game_restart_true()
{
    obj_archipelago_client.AP_disconnect();
    snd_free_all();
    game_restart();
}