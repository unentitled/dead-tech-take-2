if (!started) {
    started = true;
    create_dialog(dialog);
} else if (fade_dir == 0 && !instance_exists(obj_dialog)) {
    fade_dir = 1;
} else if (fade_dir == 1) {
    a += fade_speed;
    if (a >= 1) {
        a = 1;
        fade_dir = -1;
        room_goto_next();
    }
} else if (fade_dir == -1) {
    a -= fade_speed;
    if (a <= 0) instance_destroy();
}