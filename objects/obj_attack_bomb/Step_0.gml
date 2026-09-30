blink_timer--;
if (blink_timer <= 0) {
    image_index = (image_index + 1) mod BOMB_BLINK_FRAMES;
    blink_timer = (fuse > 15) ? 5 : 2;
}

fuse--;
if (fuse <= 0) {
    with (obj_enemy_parent) {
        if (point_distance(x, y, other.x, other.y) <= other.radius) {
            take_hit(other.damage, other.x, other.y, other.element);
        }
    }
    
    var _ex = instance_create_depth(x, y, depth, obj_attack_explosion);
    _ex.image_blend = image_blend;
    
    instance_destroy();
}