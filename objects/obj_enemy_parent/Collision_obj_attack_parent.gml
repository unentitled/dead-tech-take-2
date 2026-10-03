if (!other.armed) exit;

take_hit(other.damage, other.x, other.y, other.element);

if (other.is_shield){
	other.armed = false;
}