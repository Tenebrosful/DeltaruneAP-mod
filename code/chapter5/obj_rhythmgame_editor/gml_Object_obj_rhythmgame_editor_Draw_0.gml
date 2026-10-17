/// PATCH

/// PREPEND
draw_set_font(fnt_main);
/// END

/// REPLACE
scr_draw_simple_menu(selection, _xalign, _yalign, 16, tracklist);
/// CODE
if (selection == 0)
{
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign, tracklist[selection + 1]);
    draw_text(_xalign, _yalign, tracklist[selection + 2]);
    draw_text(_xalign, _yalign, tracklist[selection + 3]);
    draw_text(_xalign, _yalign, tracklist[selection + 4]);
    draw_text(_xalign, _yalign, tracklist[selection + 5]);
    draw_text(_xalign, _yalign, tracklist[selection + 6]);
}
else if (selection == 1)
{
    draw_text(_xalign, _yalign, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign, tracklist[selection + 1]);
    draw_text(_xalign, _yalign, tracklist[selection + 2]);
    draw_text(_xalign, _yalign, tracklist[selection + 3]);
    draw_text(_xalign, _yalign, tracklist[selection + 4]);
    draw_text(_xalign, _yalign, tracklist[selection + 5]);
}
else if (selection == 2)
{
    draw_text(_xalign, _yalign, tracklist[selection - 2]);
    draw_text(_xalign, _yalign, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign, tracklist[selection + 1]);
    draw_text(_xalign, _yalign, tracklist[selection + 2]);
    draw_text(_xalign, _yalign, tracklist[selection + 3]);
    draw_text(_xalign, _yalign, tracklist[selection + 4]);
}
else if (selection == array_length(tracklist) - 1)
{
    draw_text(_xalign, _yalign, tracklist[selection - 6]);
    draw_text(_xalign, _yalign, tracklist[selection - 5]);
    draw_text(_xalign, _yalign, tracklist[selection - 4]);
    draw_text(_xalign, _yalign, tracklist[selection - 3]);
    draw_text(_xalign, _yalign, tracklist[selection - 2]);
    draw_text(_xalign, _yalign, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
}
else if (selection == array_length(tracklist) - 2)
{
    draw_text(_xalign, _yalign, tracklist[selection - 5]);
    draw_text(_xalign, _yalign, tracklist[selection - 4]);
    draw_text(_xalign, _yalign, tracklist[selection - 3]);
    draw_text(_xalign, _yalign, tracklist[selection - 2]);
    draw_text(_xalign, _yalign, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign, tracklist[selection + 1]);
}
else if (selection == array_length(tracklist) - 3)
{
    draw_text(_xalign, _yalign, tracklist[selection - 4]);
    draw_text(_xalign, _yalign, tracklist[selection - 3]);
    draw_text(_xalign, _yalign, tracklist[selection - 2]);
    draw_text(_xalign, _yalign, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign, tracklist[selection + 1]);
    draw_text(_xalign, _yalign, tracklist[selection + 2]);
}
else
{
    draw_text(_xalign, _yalign, tracklist[selection - 3]);
    draw_text(_xalign, _yalign, tracklist[selection - 2]);
    draw_text(_xalign, _yalign, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign, tracklist[selection + 1]);
    draw_text(_xalign, _yalign, tracklist[selection + 2]);
    draw_text(_xalign, _yalign, tracklist[selection + 3]);
}
/// END
