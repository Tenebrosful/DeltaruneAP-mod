/// IMPORT
if (global.AP_connection_state == global.AP_ENUM_CONNECTION_STATE.TRYING_TO_CONNECT)
{
    step++;
    
    if (step > global.AP_connect_deadline)
    {
        show_debug_message("Connection timed out");
        global.AP_connection_errors = "Connection timed out after " + string(global.AP_connect_deadline/30) + "s";
        obj_archipelago_client.AP_disconnect();
        global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.ERROR_TIMEOUT;
        step = 0;
    }
}
else if (global.AP_connection_state == global.AP_ENUM_CONNECTION_STATE.READY)
{
    step++;

    if (step > global.AP_heartbeat_timer)
    {
        AP_heartbeat();
        step = 0;
    }
}
