function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog)
    _inst.messages = _messages
    _inst.current_message = 0;
}

char_colors = {
    "gindy": c_yellow,
    "Steven": c_aqua,
    "autumn": c_maroon,
    "Player": c_teal
}

welcome_dialog = [
    {
        name: "gindy",
        msg: "test message no. 1"
    },
    
    {
        name: "Steven",
        msg: "test message no. 2"
    },
    
    {
        name: "autumn",
        msg: "test message no. 3"
    },
    
    {
        name: "Steven",
        msg: "final test message. Goodbye!"
    },
]

pc_dialog = [
    {
        name: "Player",
        msg: "this is a computer"
    }, 
    {
        name: "Player",
        msg: "type 'help' for commands"
    },
]