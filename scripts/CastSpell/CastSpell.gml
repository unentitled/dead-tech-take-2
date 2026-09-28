function cast_spell(_spell) {
    var _inst = noone;
    
    // Spawn appropriate shape instance
    switch (_spell.shape) {
        case "cone":
            _inst = instance_create_depth(x, y, depth, obj_attack_cone);
            _inst.image_angle = facing + 90;
            break;
        
        case "slash":
            _inst = instance_create_depth(x, y, depth, obj_attack_slash);
            _inst.image_angle = facing + 90;
            break;
            
        case "projectile":
            _inst = instance_create_depth(x, y, depth, obj_attack_projectile);
            _inst.direction = facing;
            _inst.speed = 10;
            break;
    }
    
    // Apply modifiers to instance
    if (instance_exists(_inst)) {
        _inst.element = _spell.element;
        _inst.damage *= damage;
        
        // Element color adjustments
        switch (_spell.element) {
            case "fire":      _inst.image_blend = c_orange; break;
            case "water":       _inst.image_blend = c_aqua;   break;
            case "lightning": _inst.image_blend = c_yellow; break;
            default:          _inst.image_blend = c_white;  break;
        }
    }
}
