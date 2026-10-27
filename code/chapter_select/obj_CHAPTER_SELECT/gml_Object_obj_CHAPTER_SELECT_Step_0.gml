/// IMPORT
if (global.lang == "ja")
    toggle_language();

if (waitforconnection && (obj_archipelago_client.AP_isAuthenticated() || global.AP_connection_state <= global.AP_ENUM_CONNECTION_STATE.DISCONNECTED))
{
    if (obj_archipelago_client.AP_isAuthenticated())
    {
        detect_no_chapters();
        change_state(_current_state);
    }
    else
    {
        room_goto(PLACE_ARCHIPELAGO_CONNECT);
    }
    
    waitforconnection = 0;
}
