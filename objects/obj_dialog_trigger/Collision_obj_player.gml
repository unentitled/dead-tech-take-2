if (instance_exists(obj_dialog)) exit;
    
if (instance_exists(obj_console) && obj_console.is_open) exit;

create_dialog(dialog);
instance_destroy();