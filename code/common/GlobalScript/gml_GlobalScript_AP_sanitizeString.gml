/// IMPORT
function AP_sanitizeString(input)
{
    output = input;

    output = string_replace_all(output, "&", "");
    output = string_replace_all(output, "/", "");
    output = string_replace_all(output, "\\", "");

    return output;
}