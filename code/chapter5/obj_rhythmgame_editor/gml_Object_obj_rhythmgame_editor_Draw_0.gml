/// PATCH

/// PREPEND
draw_set_font(fnt_main);
/// END

/// REPLACE
scr_draw_simple_menu(selection, _xalign, _yalign, 16, tracklist);
/// CODE
// least efficient menu code ever but it works and i can see the all the options now and thats what matters
if (selection == 0)
{
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign + 16, tracklist[selection + 1]);
    draw_text(_xalign, _yalign + 32, tracklist[selection + 2]);
    draw_text(_xalign, _yalign + 48, tracklist[selection + 3]);
    draw_text(_xalign, _yalign + 64, tracklist[selection + 4]);
    draw_text(_xalign, _yalign + 80, tracklist[selection + 5]);
    draw_text(_xalign, _yalign + 96, tracklist[selection + 6]);
}
else if (selection == 1)
{
    draw_text(_xalign, _yalign, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign + 16, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign + 32, tracklist[selection + 1]);
    draw_text(_xalign, _yalign + 48, tracklist[selection + 2]);
    draw_text(_xalign, _yalign + 64, tracklist[selection + 3]);
    draw_text(_xalign, _yalign + 80, tracklist[selection + 4]);
    draw_text(_xalign, _yalign + 96, tracklist[selection + 5]);
}
else if (selection == 2)
{
    draw_text(_xalign, _yalign, tracklist[selection - 2]);
    draw_text(_xalign, _yalign + 16, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign + 32, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign + 48, tracklist[selection + 1]);
    draw_text(_xalign, _yalign + 64, tracklist[selection + 2]);
    draw_text(_xalign, _yalign + 80, tracklist[selection + 3]);
    draw_text(_xalign, _yalign + 96, tracklist[selection + 4]);
}
else if (selection == array_length(tracklist) - 1)
{
    draw_text(_xalign, _yalign, tracklist[selection - 6]);
    draw_text(_xalign, _yalign + 16, tracklist[selection - 5]);
    draw_text(_xalign, _yalign + 32, tracklist[selection - 4]);
    draw_text(_xalign, _yalign + 48, tracklist[selection - 3]);
    draw_text(_xalign, _yalign + 64, tracklist[selection - 2]);
    draw_text(_xalign, _yalign + 80, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign + 96, tracklist[selection]);
    draw_set_color(c_white);
}
else if (selection == array_length(tracklist) - 2)
{
    draw_text(_xalign, _yalign, tracklist[selection - 5]);
    draw_text(_xalign, _yalign + 16, tracklist[selection - 4]);
    draw_text(_xalign, _yalign + 32, tracklist[selection - 3]);
    draw_text(_xalign, _yalign + 48, tracklist[selection - 2]);
    draw_text(_xalign, _yalign + 64, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign + 80, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign + 96, tracklist[selection + 1]);
}
else if (selection == array_length(tracklist) - 3)
{
    draw_text(_xalign, _yalign, tracklist[selection - 4]);
    draw_text(_xalign, _yalign + 16, tracklist[selection - 3]);
    draw_text(_xalign, _yalign + 32, tracklist[selection - 2]);
    draw_text(_xalign, _yalign + 48, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign + 64, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign + 80, tracklist[selection + 1]);
    draw_text(_xalign, _yalign + 96, tracklist[selection + 2]);
}
else
{
    draw_text(_xalign, _yalign, tracklist[selection - 3]);
    draw_text(_xalign, _yalign + 16, tracklist[selection - 2]);
    draw_text(_xalign, _yalign + 32, tracklist[selection - 1]);
    draw_set_color(c_yellow);
    draw_text(_xalign, _yalign + 48, tracklist[selection]);
    draw_set_color(c_white);
    draw_text(_xalign, _yalign + 64, tracklist[selection + 1]);
    draw_text(_xalign, _yalign + 80, tracklist[selection + 2]);
    draw_text(_xalign, _yalign + 96, tracklist[selection + 3]);
}
/// END
