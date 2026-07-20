/// IMPORT
if (global.AP_connection_state == global.AP_ENUM_CONNECTION_STATE.ERROR_CONNECTION_REFUSED)
{
  global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.GOT_ROOMINFO;
  obj_archipelago_client.AP_sendConnectionInfo();
}
else
{
  obj_archipelago_client.AP_connect();
}
