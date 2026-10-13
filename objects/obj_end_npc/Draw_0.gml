if (!visible) exit;

draw_shadow_alt();
draw_self();

if(can_talk && !instance_exists(obj_dialog))
{
    draw_sprite(spr_talk, 0, x + 8, y - 6);
}