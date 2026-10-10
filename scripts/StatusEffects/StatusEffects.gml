#macro KNOCKBACK_FRAMES       5
#macro KNOCKBACK_FRAMES_WATER 10
#macro BURN_FRAMES            100
#macro BURN_TICK_FRAMES       50
#macro BURN_TICK_DAMAGE       1
#macro BURN_SPEED_MULT        3
#macro STUN_FRAMES            60
#macro HACKED_FRAMES          240
#macro HACKED_DAMAGE_MULT     2


function defeat_enemy(_enemy) {
    with (_enemy) {
        if (!defeated) {
            defeated = true;

            if (mp_reward > 0) {
                global.mp = min(global.mp + mp_reward, global.hp_total);

                if (instance_exists(obj_player)) {
                    with (obj_player) {
                        mp = global.mp;
                    }
                }
            }

            instance_destroy();
        }
    }
}

function apply_element(_element) { 
    switch (_element) {
        case "fire":      burn_time = BURN_FRAMES; burn_tick = BURN_TICK_FRAMES; break;
        case "lightning": hacked_time = HACKED_FRAMES; break;
        case "ice":       stun_time = STUN_FRAMES; break;
    }
}

function take_hit(_dmg, _from_x, _from_y, _element = "none") {
    if (is_hazard) return false;
    if (alarm[1] >= 0) return false;

    if (hacked_time > 0) _dmg *= HACKED_DAMAGE_MULT;
    hp -= _dmg;

    image_blend = c_red;
    alarm[1] = 20;

    var _dir = point_direction(_from_x, _from_y, x, y);
    knockback_x = lengthdir_x(1, _dir);
    knockback_y = lengthdir_y(1, _dir);
    knockback_time = (_element == "water") ? KNOCKBACK_FRAMES_WATER : KNOCKBACK_FRAMES;

    apply_element(_element);

    if (hp <= 0) defeat_enemy(id);
    return true;
}