if (instance_exists(obj_dialog)) exit;

if (burn_time > 0) {
    burn_time--;
    burn_tick--;
    if (burn_tick <= 0) {
        burn_tick = BURN_TICK_FRAMES;
        hp -= BURN_TICK_DAMAGE;
        if (hp <= 0) defeat_enemy(id);
    }
}

if (stun_time > 0) {
    stun_time--;
    exit;
}

if (knockback_time > 0) {
    knockback_time--;
    target_x = x + knockback_x;
    target_y = y + knockback_y;
    move_speed = 5;
}

else {
    move_speed = (burn_time > 0) ? BURN_SPEED_MULT : 1;
}

if (knockback_time = 0) {
	move_speed = 1;
	if (burn_time > 0) move_speed = 1 * BURN_SPEED_MULT;
}

var _dx = target_x - x;
var _dy = target_y - y;

var _move_x = sign(_dx) * min(abs(_dx), move_speed);
var _move_y = sign(_dy) * min(abs(_dy), move_speed);

move_and_collide(_move_x, _move_y, [tilemap, obj_enemy_parent, obj_door_parent]);