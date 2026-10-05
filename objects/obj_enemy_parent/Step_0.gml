if (instance_exists(obj_dialog)) exit;

if (burn_time > 0) {
    burn_time--;
    burn_tick--;
    if (burn_tick <= 0) {
        burn_tick = BURN_TICK_FRAMES;
        hp -= BURN_TICK_DAMAGE;
        if (hp <= 0) instance_destroy();
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

if (knockback_time = 0) {
	move_speed = 1;
}


var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent, obj_door_parent]);