if (!other.armed) exit;

take_hit(other.damage, other.x, other.y, other.element);

if (instance_exists(obj_attack_shield) && other.is_shield){
	other.armed = false;
}