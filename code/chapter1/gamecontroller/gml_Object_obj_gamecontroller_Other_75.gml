/// PATCH

/// REPLACE
                    if (ossafe_file_exists("keyconfig_" + string(global.filechoice) + ".ini"))
                    {
                        ossafe_ini_open("keyconfig_" + string(global.filechoice) + ".ini");
/// CODE
                    if (ossafe_file_exists("config_" + string(global.filechoice) + ".ini"))
                    {
                        ossafe_ini_open("config_" + string(global.filechoice) + ".ini");
/// END