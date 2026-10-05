
// prevents movement when using dialog or console
if (instance_exists(obj_console) && obj_console.is_open) exit; 
if (instance_exists(obj_dialog)) exit;


if (dash_time > 0) {
    move_and_collide(lengthdir_x(DASH_SPEED, dash_dir),
                     lengthdir_y(DASH_SPEED, dash_dir),
                     [tilemap, obj_door_parent], undefined, undefined, undefined, DASH_SPEED, DASH_SPEED);
} 

else {
    var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
    var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

    // i don't get this but fixes diagnal movement 
    var _len = _hor != 0 || _ver != 0;
    var _dir = point_direction(0, 0, _hor, _ver);
    _hor = lengthdir_x(_len, _dir);
    _ver = lengthdir_y(_len,  _dir);
    
    // slowed while standing in a hazard
    var _spd = move_speed;
    if (place_meeting(x, y, obj_hazard_parent)) _spd *= LAVA_SLOWDOWN;
        
    move_and_collide(_hor * _spd, _ver * _spd, [tilemap, obj_door_parent], undefined, undefined, undefined, _spd, _spd);
    
    if (_hor != 0 or _ver != 0) 
    {
        image_speed = 1;
        if (_ver > 0) sprite_index = spr_player_walk_down;
        else if (_ver < 0) sprite_index = spr_player_walk_up;
        else if (_hor > 0) sprite_index = spr_player_walk_right;
        else if (_hor < 0) sprite_index = spr_player_walk_left;
            
        facing = point_direction(0, 0, _hor, _ver);
    }
    else  
    {
        if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
        else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
        else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
        else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    }
}




// dash logic

if (dash_time > 0) {
    dash_time--;
}
else {
    is_iframe = false;
}

if (keyboard_check_pressed(vk_space) && current_time - last_dash >= DASH_COOLDOWN) {
    dash_time = DASH_FRAMES;
    dash_dir = facing;
    last_dash = current_time;
    is_iframe = true;
}




// is this mapped already?
var _keys = variable_struct_get_names(spells);
for (var i = 0; i < array_length(_keys); i++) {
    var _key_code = real(_keys[i]);
    
    if (keyboard_check_pressed(_key_code)) {
        var _spell = spells[$ _keys[i]];
        var _cd = spell_cooldown(_spell.shape);
        
        if (current_time - _spell.last_cast >= _cd) {
            _spell.last_cast = current_time;
            cast_spell(_spell);
        }
    }
}