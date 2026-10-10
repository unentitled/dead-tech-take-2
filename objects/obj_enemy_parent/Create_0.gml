target_x = x;
target_y = y;


alarm[0] = 60;

tilemap = layer_tilemap_get_id("Tiles_Col");

// initializers. change macros in StatusEffects script. 
knockback_x = 0;
knockback_y = 0;
knockback_time = 0;
burn_time = 0;
burn_tick = 0;
stun_time = 0;
hacked_time = 0;
is_hazard = false;

// used for MP
mp_reward = 1;
defeated = false;