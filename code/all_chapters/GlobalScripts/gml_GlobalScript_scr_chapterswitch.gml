/// PATCH

/// REPLACE
                case os_windows:
                    game_change("/../", "-game data.win" + parameters);
/// CODE
                case os_windows:
                    if (instance_exists(obj_archipelago_client))
                    {
                        obj_archipelago_client.AP_disconnect();
                    }

                    game_change("/../", "-game data.win");
/// END