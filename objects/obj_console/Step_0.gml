
if (keyboard_check_pressed(vk_tab)) {
    is_open = !is_open;
    keyboard_string = "";
    input_text = "";
}

if (is_open) {
    // Capture native keyboard input buffer
    if (string_length(keyboard_string) > max_length) {
        keyboard_string = string_copy(keyboard_string, 1, max_length);
    }
    input_text = keyboard_string;

    // Submit command on Enter
    if (keyboard_check_pressed(vk_enter)) {
        if (input_text != "") { 
            parse(input_text);
        }
        is_open = false;
        input_text = "";
        keyboard_string = "";
    }
}




