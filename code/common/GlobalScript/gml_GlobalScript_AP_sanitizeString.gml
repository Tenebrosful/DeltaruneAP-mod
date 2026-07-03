/// IMPORT
function AP_sanitizeString(input)
{

    if (input == undefined) return "";
    
    output = input;

    output = string_replace_all(output, "&", "");
    output = string_replace_all(output, "/", "");
    output = string_replace_all(output, "\\", "");

    return output;
}