/// IMPORT
if (global.AP_isAuthenticated == 0)
{
    step++;
    
    if (step > global.AP_connect_deadline)
    {
        show_debug_message("Connection timed out");
        global.AP_isAuthenticated = 1;
        network_destroy(global.AP_socket);
        global.AP_socket = -1;
        step = 0;
    }
}
