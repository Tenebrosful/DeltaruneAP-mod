/// IMPORT
var text1 = "Egg Attempts : " + string(global.AP_egg_attempts);

if (global.AP_better_odds)
  text1 += " (with better odds)"

var odds = global.AP_better_odds ? 0.2 : 0.02;
var expected_attempts = 1 / odds
var probability = power(1 - odds, global.AP_egg_attempts - 1) * odds
var text2 = string("1 chance in {0} ({1}%)", string(1 / probability), string(probability * 100))
draw_set_halign(fa_right)
draw_set_font(fnt_main)
draw_set_color(c_white)
draw_text(camerax() + camera_get_view_width(view_camera[0]) - 20, 5, text1)

if (global.AP_egg_attempts == expected_attempts)
  draw_set_color(c_white);
else if (global.AP_egg_attempts > expected_attempts)
  draw_set_color(c_red);
else
  draw_set_color(c_green);

draw_text(camerax() + camera_get_view_width(view_camera[0]) - 20, 20, text2)
draw_set_color(c_white)
draw_set_halign(fa_left)