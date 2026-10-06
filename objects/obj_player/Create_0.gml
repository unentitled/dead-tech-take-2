move_speed = 1.5;

tilemap = layer_tilemap_get_id("Tiles_Col");

// global vars that keep through rooms
if (!variable_global_exists("spells")) {
    global.hp       = 10;
    global.hp_total = 10;
    global.spells   = {};
}
hp       = global.hp;
hp_total = global.hp_total;
spells   = global.spells;

damage = 1;
facing = 0;


// dash
dash_time   = 0;           
dash_dir    = 0;           
last_dash   = -999999999;
is_iframe = false;

// dash settings
#macro DASH_SPEED       4
#macro DASH_FRAMES      8
#macro DASH_COOLDOWN    500

// slow down: used for hazards
#macro LAVA_SLOWDOWN   0.5

//todo: implement
mp = 10;
mp_total = mp;