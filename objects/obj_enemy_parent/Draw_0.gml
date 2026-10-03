draw_shadow();

if (hacked_time > 0) {
    var _jx = random_range(-2, 2);
    var _jy = random_range(-2, 2);
    var _col = choose(c_aqua, c_fuchsia, c_white);
    var _flip = (irandom(10) < 2) ? -1 : 1;
    draw_sprite_ext(sprite_index, image_index, x + _jx, y + _jy, image_xscale * _flip, image_yscale, image_angle, _col, 1);
    
    if (irandom(10) < 3) {
        draw_set_color(_col);
        draw_text(x - 10, y - 26, choose("ERR", "0xFF", "NULL", "#@!"));
    }
}
else {
    draw_self();
}

if (burn_time > 0) {
    draw_set_color(c_orange);
    for (var i = 0; i < 3; i++) {
        var _ex = x + random_range(-8, 8);
        var _ey = y - random_range(4, 20);
        draw_rectangle(_ex, _ey, _ex + 2, _ey + 2, false);
    }
}

if (stun_time > 0) {
    draw_set_color(c_aqua);
    for (var i = 0; i < 2; i++) {
        var _ex = x + random_range(-8, 8);
        var _ey = y - random_range(4, 20);
        draw_rectangle(_ex, _ey, _ex + 2, _ey + 2, false);
    }
}

draw_set_color(c_white);