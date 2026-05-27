/// FUNCTIONS
function dec_to_hex(arg0, arg1 = 6)
{
    var hex = "";
    
    if (arg0 < 0)
        arg1 = max(arg1, ceil(logn(16, 2 * abs(arg0))));
    
    var dig = "0123456789ABCDEF";
    
    while (arg1-- || arg0)
    {
        hex = string_char_at(dig, (arg0 & 15) + 1) + hex;
        arg0 = arg0 >> 4;
    }
    
    return string_reverse(hex);
}

function hex_to_dec(arg0)
{
    var dec = 0;
    var dig = "0123456789ABCDEF";
    var len = string_length(arg0);
    
    for (var pos = 1; pos <= len; pos += 1)
        dec = (dec << 4) | (string_pos(string_char_at(arg0, pos), dig) - 1);
    
    return dec;
}