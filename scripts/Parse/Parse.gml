function parse(_input_string) {
    var _cleaned = string_lower(string_trim(_input_string));
    var _tokens = string_split(_cleaned, " ");
    var _count = array_length(_tokens);
    var _needs_help = false;
    var _immediate_cast = false;
    
    // default spell container
    var _spell = {
        element: "neutral",
        shape: "slash",
        key_bound: -1,
        last_cast: -999999999
    };
    
    // gets params from _tokens
    for (var i = 0; i < _count; i++) {
        var _token = _tokens[i];
        
        
        // place element modifiers here. make sure 
        if (_token == "fire" || 
            _token == "water" || 
            _token == "lightning" ||
            _token == "ice") {
            _spell.element = _token;
        }
        // place attack shape modifiers here
        else if (_token == "projectile" ||
            _token == "slash" ||
            _token == "shield" ||
            _token == "bomb") {
            _spell.shape = _token;
        }
        
        else if (_token == "cast") {
            _immediate_cast = true;
        }
        
        // keybind logic
        else if (_token == "bind" && i + 1 < _count) {
            var _key_str = _tokens[i + 1];
            
            // map hotkeys
            switch (_key_str) {
                case "1": _spell.key_bound = ord("1"); break;
                case "2": _spell.key_bound = ord("2"); break;
                case "3": _spell.key_bound = ord("3"); break;
                case "4": _spell.key_bound = ord("4"); break;
                case "5": _spell.key_bound = ord("5"); break;
            }
            i++;
        }
        else if (_token == "help") {
            _needs_help = true;
        }
    }
    

    // casts spell immediately
    if (instance_exists(obj_player)) {
        if (_immediate_cast) {
            with (obj_player) cast_spell(_spell);
        }
        // binds spell
        else if (_spell.key_bound != -1) {
            obj_player.spells[$ string(_spell.key_bound)] = _spell;
        }
}
}