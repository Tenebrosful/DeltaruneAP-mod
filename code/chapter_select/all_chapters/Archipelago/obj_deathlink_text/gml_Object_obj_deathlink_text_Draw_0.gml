/// IMPORT
var division;

if (room == room_gameover)
    division = 3;
else
    division = 2;

posx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / division);
var source = " ";
var cause = " ";

if (typeof(global.AP_deathlink_infos.source) == "string")
    source = string_copy(global.AP_deathlink_infos.source, 1, string_length(global.AP_deathlink_infos.source));
else
    source = "Yourself";

if (typeof(global.AP_deathlink_infos.cause) == "string")
    cause = string_copy(global.AP_deathlink_infos.cause, 1, string_length(global.AP_deathlink_infos.cause));
else
    cause = "But we don't know how...";

if (source == "Yourself")
    cause = "You died yourself!";

draw_set_halign(fa_center);
draw_set_font(fnt_main);
draw_set_color(c_red);
draw_text(posx, 0, "Deathlink from " + source);
draw_set_color(c_white);
draw_text(posx, 10, cause);
draw_set_halign(fa_left);
draw_text(0, 0, string(camera_get_view_x(view_camera[0])));
draw_text(0, 15, string(camera_get_view_width(view_camera[0])));
