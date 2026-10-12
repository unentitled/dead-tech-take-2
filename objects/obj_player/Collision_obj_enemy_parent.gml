if (is_iframe == true) exit;

if (alarm[0] < 0) {
    hp -= other.damage;
    global.hp = hp;
    
    alarm[0] = 60;
    image_blend = c_red;
    
    if (hp <= 0) {
        global.hp = global.hp_total;  // full heal for the respawn
        global.endless_wave = 0;      // endless mode: death resets to wave 1
        room_restart();
    }
}