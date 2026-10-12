
if (instance_exists(obj_dialog)) exit;

switch (state) {
    case "cooldown":
        timer--;
        if (timer <= 0) {
            wave++;
            global.endless_wave = wave;
            if (wave > global.endless_best) {
                global.endless_best = wave;
                best = wave;
            }
            to_spawn = base_count + (wave - 1) * 2;
            timer = 0;
            next_spawn_index = 0;
            state = "spawning";
        }
        break;

    case "spawning":
        if (to_spawn > 0) {
            timer--;
            if (timer <= 0) {
                wave_spawn_enemy();
                to_spawn--;
                timer = spawn_delay;
            }
        } 
        else {
            state = "combat";
        }
        break;

    case "combat":
        var _alive = instance_number(obj_enemy1)
                   + instance_number(obj_enemy2)
                   + instance_number(obj_enemy_shooter);
        if (_alive <= 0) {
            if (instance_exists(obj_player)) {
                obj_player.x = player_start_x;
                obj_player.y = player_start_y;
            }
            state = "cooldown";
            timer = cooldown_frames;
        }
        break;
}
