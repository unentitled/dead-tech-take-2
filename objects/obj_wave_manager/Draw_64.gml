draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _cx = display_get_gui_width() / 2;

if (state == "cooldown") {
    var _secs = ceil(timer / 60);
    var _label = (wave == 0)
        ? "Wave 1 in " + string(_secs)
        : "Wave " + string(wave + 1) + " in " + string(_secs);
    draw_text(_cx, 8, _label);
} 

else {
    draw_text(_cx, 8, "Wave " + string(wave));
}

draw_text(_cx, 28, "Best: " + string(global.endless_best));

draw_set_halign(fa_left);
draw_set_valign(fa_top);
