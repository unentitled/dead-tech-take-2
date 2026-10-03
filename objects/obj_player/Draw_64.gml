// healthbar
var _dx = 16;
var _dy = 16;
var
_barw = 256;
var
_barh = 32;

// Properties
draw_set_font (Font1);
draw_set_halign (fa_center);
draw_set_valign(fa_middle);

// HP bar drop shadow
draw_sprite_stretched_ext(spr_box, 1, _dx + 4, _dy + 4, _barw, _barh, c_black, 0.4);

// Healthbar
var _health_barw = _barw * (hp / hp_total);
draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);
draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP");


// Reset properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);


//////////////////////////////////////////


// spell inventory
var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();

var _size = 50;
var _gap = 8;
var _x0 = (_guiw - (5 * _size + 4 * _gap)) / 2;
var _y = _guih * 1 - _size - 8;

// window size vars
var _pad    = 10;  
var _titleh = 20;

var _ww = 5 * _size + 4 * _gap + _pad * 2;
var _wh = _size + _pad * 2 + _titleh;
var _wx = (_guiw - _ww) / 2;
var _wy = _y - _titleh - _pad;

// window drop shadow
draw_sprite_stretched_ext(spr_window, 0, _wx + 4, _wy + 4, _ww, _wh, c_black, 0.4);
// draw window
draw_sprite_stretched(spr_window, 0, _wx, _wy - 6, _ww, _wh);

// title text in last param.
draw_text(_wx + 8, _wy - 6, "Spells");

// individual box logic
for (var i = 0; i < 5; i++) {
    var _bx = _x0 + i * (_size + _gap);



    // key number
    draw_set_color(c_gray);
    draw_text(_bx + 2, _y + 2, string(i + 1));

    var _key = string(ord(string(i + 1)));
    if (variable_struct_exists(spells, _key)) {
        var _spell = spells[$ _key];

        // icon = the spell's shape sprite.
        var _icon = spr_slash_icon;
        switch (_spell.shape) {
            case "projectile": _icon = spr_bullet_icon; break;
            case "shield":     _icon = spr_shield_icon;  break;
            case "bomb":       _icon = spr_bomb_icon;    break;
        }

        // element tint
        var _col = c_white;
        switch (_spell.element) {
            case "fire":      _col = c_orange; break;
            case "water":     _col = c_blue;   break;
            case "lightning": _col = c_yellow; break;
            case "ice":       _col = c_aqua;   break;
        }

        // scale icon to fit the slot
        var _scale = min((_size - 8) / sprite_get_width(_icon),
                         (_size - 8) / sprite_get_height(_icon));
        draw_sprite_ext(_icon, 0, _bx + _size / 2, _y + _size / 2,
                        _scale, _scale, 0, _col, 1);

        // cooldown empty
        var _cd = spell_cooldown(_spell.shape);
        var _remain = max(0, _cd - (current_time - _spell.last_cast));
        if (_remain > 0) {
            draw_set_alpha(0.6);
            draw_set_color(c_black);
            draw_rectangle(_bx, _y, _bx + _size, _y + _size * (_remain / _cd), false);
            draw_set_alpha(1);
        }
    }
}