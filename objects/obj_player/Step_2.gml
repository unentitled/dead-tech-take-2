with (all)
{
    if (!variable_instance_exists(id, "is_hazard") || !is_hazard)
    {
        depth = -bbox_bottom;
    }
}


// camera logic
var _cam = view_camera[0];
var _cam_width = camera_get_view_width(_cam);
var _cam_height = camera_get_view_height(_cam);
var _cam_x = x - _cam_width / 2;
var _cam_y = y - _cam_height / 2;
camera_set_view_pos (_cam, _cam_x, _cam_y);