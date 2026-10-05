var _ready = array_length(door_keys) > 0;
for (var i = 0; i < array_length(door_keys); i++) {
    if (instance_exists(door_keys[i])) { _ready = false; break; }
}

if (_ready) instance_destroy();