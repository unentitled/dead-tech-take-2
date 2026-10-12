function wave_pick_spawn() {
    var _point_count = array_length(spawn_point_x);
    if (_point_count <= 0) return 0;

    // cycle through the points one at a time so no two spawns share a spot
    var _index = next_spawn_index mod _point_count;
    next_spawn_index++;
    return _index;
}

function wave_spawn_enemy() {
    var _index = wave_pick_spawn();
    var _spawn_x = spawn_point_x[_index];
    var _spawn_y = spawn_point_y[_index];

    var _enemy_type = obj_enemy2;
    var _type_roll = random(1);
    if (wave >= 3 && _type_roll < 0.30) _enemy_type = obj_enemy_shooter;
    else if (_type_roll < 0.65)         _enemy_type = obj_enemy1;

    var _enemy = instance_create_depth(_spawn_x, _spawn_y, -_spawn_y, _enemy_type);

    _enemy.hp        += (wave - 1) * 2;
    _enemy.damage     = 1 + floor((wave - 1) / 3);
    _enemy.speed_mult = 1 + (wave - 1) * 0.1;
    _enemy.is_aggro   = true;
}
