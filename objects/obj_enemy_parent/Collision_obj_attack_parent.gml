if (!other.armed) exit;

take_hit(other.damage, other.x, other.y, other.element);

if (other.object_index == obj_attack_shield) {
    other.armed = false;
}