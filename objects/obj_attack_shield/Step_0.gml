// follow the player
if (instance_exists(obj_player)) {
    x = obj_player.x;
    y = obj_player.y;
    depth = obj_player.depth;
}

// lifetime
shield_time--;
if (shield_time <= 0) instance_destroy();

if (armed){
		if (visible = false)
			visible = true;
}

if (!armed){
	if (visible){
		visible = false;
	}
	if disarm_time > 0{
		disarm_time--;
	}
	if disarm_time = 0{
		armed = true;
		visible = true;
		disarm_time = SHIELD_BREAK;
	}
}