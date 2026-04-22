/// IMPORT
draw_self();

function draw_text_outline(arg0, arg1, arg2, arg3, arg4, arg5)
{
    draw_set_font(arg4);
    draw_set_color(c_black);
    draw_text(arg0 + arg2, arg1 + arg2, arg3);
    draw_text(arg0 - arg2, arg1 - arg2, arg3);
    draw_text(arg0, arg1 + arg2, arg3);
    draw_text(arg0 + arg2, arg1, arg3);
    draw_text(arg0, arg1 - arg2, arg3);
    draw_text(arg0 - arg2, arg1, arg3);
    draw_text(arg0 - arg2, arg1 + arg2, arg3);
    draw_text(arg0 + arg2, arg1 - arg2, arg3);
    draw_set_color(arg5);
    draw_text(arg0, arg1, arg3);
}

draw_sprite_ext(spr_archipelago_logo, 0, x_align - 30, 25, 4, 4, 0, c_white, 1);
draw_sprite_ext(spr_archipelago_logo_text, 0, 140, 0, 1, 1, 0, c_white, 1);

for (var ii = 0; ii < 5; ii++)
{
    draw_set_font(fnt_mainbig);
    draw_set_color(c_white);
    var text = "";
    var i = 0;
    
    switch (ii)
    {
        case 0:
            text = "Host: " + string(global.AP_server);
            i = 0;
            break;
        
        case 1:
            text = "Port: " + string(global.AP_port);
            i = 1;
            break;
        
        case 2:
            text = "Slot Name: " + string(global.AP_name);
            i = 2;
            break;
        
        case 3:
            text = "Password: " + string(global.AP_password);
            i = 3;
            break;
        
        case 4:
            text = "Connect to Multiworld";
            i = 5;
            break;
    }
    
    draw_text_outline(x_align, y_align + (gap * i), outline_offset, text, 4, 16777215);
    
    if (choice == ii)
    {
        draw_sprite_ext(spr_heart, 4, x_align / 1.5, y_align + (gap * i) + 8, 2, 2, 0, c_white, 1);
        
        if (edit)
            draw_set_color(c_yellow);
    }
    
    draw_text(x_align, y_align + (gap * i), text);
}

draw_set_color(c_white);

if (connect)
{
    switch (global.AP_isAuthenticated)
    {
        case 0:
            connected = "> Connecting...";
            break;
        
        case 1:
            draw_set_color(c_red);
            connected = "> Authentification failed.";
            break;
        
        case 2:
            draw_set_color(c_green);
            connected = "> Connected!";
            audio_destroy_stream(my_music);
            room_goto(PLACE_CHAPTER_SELECT_2x);
            break;
    }
    
    draw_text(x_align, 340, connected);
    draw_set_color(c_white);
}

draw_set_halign(fa_right);
var aa = room_width - 15;
var bb = room_height - (array_length(credits) * 17);
var gap_credits = 15;
draw_set_font(fnt_main);

for (var i = 0; i < array_length(credits); i++)
    draw_text_outline(aa, bb + (gap_credits * i), 1, credits[i], 2, 16777215);

draw_set_halign(fa_left);
