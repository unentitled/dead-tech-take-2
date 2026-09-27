if (instance_exists(obj_dialog)) exit;

if alarm[1] >=0 
{
    move_speed  = 4;
    target_x = x + knockback_x;
    target_y = y + knockback_y;
    move_speed = 1;
}


var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);