if (is_open) {
    var _w = display_get_gui_width();
    var _h = 40;
    
    // Background bar
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(0, 0, _w, _h, false);
    
    // Text prompt
    draw_set_color(c_white);
    draw_set_alpha(1.0);
    draw_text(16, 12, "> " + input_text + (current_time mod 1000 < 500 ? "|" : ""));
}
