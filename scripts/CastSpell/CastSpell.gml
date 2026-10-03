// bomb settings (explosion time is set by frames in animation)
#macro BOMB_RANGE        75
#macro BOMB_RADIUS       50
#macro BOMB_FUSE         60
#macro BOMB_BLINK_FRAMES 4

// shield settings
#macro SHIELD_FRAMES     180

// cooldown times
function spell_cooldown(_shape) {
    switch (_shape) {
        case "slash":      return 300;
        case "projectile": return 500;
        case "shield":     return 5000;
        case "bomb":       return 2500;
        default:           return 500;
    }
}

function cast_spell(_spell) {
    var _inst = noone;
    
    // spawns the attack shape
    switch (_spell.shape) {
        case "slash":
            _inst = instance_create_depth(x, y, depth, obj_attack_slash);
            _inst.image_angle = facing;
            break;
        
        case "shield":
            _inst = instance_create_depth(x, y, depth, obj_attack_shield);
            _inst.image_alpha = .50;
            _inst.image_angle = facing;
            break;
            
        case "projectile":
            _inst = instance_create_depth(x, y, depth, obj_attack_projectile);
            _inst.direction = facing;
            _inst.speed = 8;
            break;
        
        case "bomb": {
            var _lx = x + lengthdir_x(BOMB_RANGE, facing);
            var _ly = y + lengthdir_y(BOMB_RANGE, facing);
            _inst = instance_create_depth(_lx, _ly, depth - 1, obj_attack_bomb);
            break;
        }
    }
    
    // applies modifiers
    if (instance_exists(_inst)) {
        _inst.element = _spell.element;
        _inst.damage *= damage;
        
        // element colors
        switch (_spell.element) {
            case "fire":      _inst.image_blend = c_orange;  break;
            case "water":     _inst.image_blend = c_blue;    break;
            case "lightning": _inst.image_blend = c_yellow;  break;
            case "ice":       _inst.image_blend = c_aqua;    break;
            default:          _inst.image_blend = c_white;   break;
        }
    }
}