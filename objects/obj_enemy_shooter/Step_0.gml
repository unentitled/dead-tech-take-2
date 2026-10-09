if (instance_exists(obj_dialog)) exit;

if (instance_exists(obj_player)) {
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (abs(_dist - keep_distance) > 4) {
        var _away = point_direction(obj_player.x, obj_player.y, x, y);
        target_x = obj_player.x + lengthdir_x(keep_distance, _away);
        target_y = obj_player.y + lengthdir_y(keep_distance, _away);
    } else {
        target_x = x;
        target_y = y;
    }
}

event_inherited();

if (point_distance(x, y, obj_player.x, obj_player.y) > shoot_range) exit;

if (!instance_exists(obj_player) || stun_time > 0) exit;

shoot_timer--;

if (shoot_timer <= 0) {
    shoot_timer = shoot_interval;

    var _bullet = instance_create_depth(x, y, depth, obj_enemy_bullet);
    _bullet.direction = spiral_angle;
    _bullet.speed = bullet_speed;
    _bullet.image_angle = spiral_angle;

    spiral_angle = (spiral_angle + spiral_step) mod 360;
}