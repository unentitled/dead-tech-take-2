if (!variable_global_exists("endless_wave")) global.endless_wave = 0;
if (!variable_global_exists("endless_best")) global.endless_best = 0;

wave = global.endless_wave;
best = global.endless_best;

state = "cooldown";     // "cooldown" -> "spawning" -> "combat"
timer = 90;             // frames before wave 1
cooldown_frames = 600;  // pause between waves
spawn_delay = 12;       // frames between individual spawns
base_count = 3;         // wave 1 enemy count

to_spawn = 0;
spawn_point_x = [];
spawn_point_y = [];
next_spawn_index = 0;

player_start_x = 0;
player_start_y = 0;
if (instance_exists(obj_player)) {
    player_start_x = obj_player.x;
    player_start_y = obj_player.y;
}

var _point_count = instance_number(obj_wave_spawn);
for (var i = 0; i < _point_count; i++) {
    var _spawn_point = instance_find(obj_wave_spawn, i);
    spawn_point_x[i] = _spawn_point.x;
    spawn_point_y[i] = _spawn_point.y;
}
