var _dx = 0;
var _dy = gui_h * .7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;
draw_sprite_stretched(spr_dialog_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 55;
_dy += 50;

draw_set_font(Font1);


var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text (_dx, _dy, _name);
draw_set_color(#373737);

_dy += 40;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);