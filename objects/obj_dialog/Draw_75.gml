var _dx = 0;
var _dy = gui_h * .7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;
var _talkx = gui_w * .7;
var _talky = gui_h * .33;
var _talkscale = gui_w * .2;
draw_sprite_stretched(spr_dialog_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 55;
_dy += 50;

draw_set_font(Font1);


var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text (_dx, _dy, _name);
draw_set_color(#373737);
if _name = "Antigone"{
draw_sprite_stretched(spr_antigone_talk, 0, _dx + (gui_w * .05), _dy - _talky, _talkscale, _talkscale)}
if _name = "June"{
draw_sprite_stretched(spr_june_talk, 0, _dx + _talkx, _dy - _talky, _talkscale, _talkscale)}
if _name = "Hei"{
draw_sprite_stretched(spr_hei_talk, 0, _dx + _talkx, _dy - _talky, _talkscale, _talkscale)}
if _name = "Marin"{
draw_sprite_stretched(spr_marin_talk, 1, _dx + _talkx, _dy - _talky, _talkscale, _talkscale)}
if _name = "Brent"{
draw_sprite_stretched(spr_brent_talk, 2, _dx + _talkx, _dy - _talky, _talkscale, _talkscale)}
if _name = "Yukino"{
draw_sprite_stretched(spr_yukino_talk, 0, _dx + _talkx, _dy - _talky, _talkscale, _talkscale)}

_dy += 40;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);