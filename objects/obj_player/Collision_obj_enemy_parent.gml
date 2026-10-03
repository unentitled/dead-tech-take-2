// shoooouuullllddddd create i-frames for dash but I can't tell if it works.
if (is_iframe == true) exit;

if (alarm[0] < 0) {
    hp -= other.damage;
    global.hp = hp;
    
    alarm[0] = 60;
    image_blend = c_red;
    
    if (hp <= 0) {
        global.hp = global.hp_total;  // full heal for the respawn
        room_restart();
    }
}