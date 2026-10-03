// follow the player
if (instance_exists(obj_player)) {
    x = obj_player.x;
    y = obj_player.y;
    depth = obj_player.depth;
}

// lifetime
shield_time--;
if (shield_time <= 0) instance_destroy();