if (instance_exists(obj_dialog)) exit;
    
if (instance_exists(obj_console) && obj_console.is_open) exit;

if (dialog_activated){
	room_goto_next()}

if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key)) 
    {
        dialog_activated = true;
		create_dialog(dialog);
    }
}
else 
{
	can_talk = false;
}
