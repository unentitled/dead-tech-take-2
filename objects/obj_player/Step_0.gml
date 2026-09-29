
// prevents movement when using dialog or console
if (instance_exists(obj_console) && obj_console.is_open) exit; 
if (instance_exists(obj_dialog)) exit;


var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// i don't get this but fixes diagnal movement
var _len = _hor != 0 || _ver != 0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len,  _dir);

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);



if (keyboard_check_pressed(vk_shift) == true) {
    move_speed = 10;
}
else {
	move_speed = 1;
}


if (_hor != 0 or _ver != 0)
{
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




if (keyboard_check_pressed(vk_space)) 
{
    var _inst = instance_create_depth(x, y, depth, obj_attack_slash);
    _inst.image_angle = facing;
    _inst.damage *= damage;
}
if (keyboard_check_pressed(ord("C"))) 
{
    var _inst = instance_create_depth(x, y, depth, obj_attack_shield);
    _inst.image_angle = facing + 90;
    _inst.damage *= damage;
}

// projectile test
if (keyboard_check_pressed(ord("F")))
{
    // todo: make this a function for reuse
    var _inst = instance_create_depth(x, y, depth, obj_attack_projectile);
    _inst.image_angle = facing + 90;
    _inst.direction = facing;
    _inst.speed = 8;
    _inst.damage *= damage;
}



// is this mapped already?
var _keys = variable_struct_get_names(spells);
for (var i = 0; i < array_length(_keys); i++) {
    var _key_code = real(_keys[i]);
    
    if (keyboard_check_pressed(_key_code)) {
        var _spell = spells[$ _keys[i]];
        cast_spell(_spell);
    }
    
}
