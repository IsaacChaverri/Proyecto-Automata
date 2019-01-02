///scr_number_dial_window_deselect_number_button()
//Delete Value
var number_dial_window = button.number_dial_window;
var value_index = scr_string_get_char_index(number_dial_window.values,button.value);
number_dial_window.values = string_delete(number_dial_window.values,value_index,1);
//Destory Dummy
instance_destroy();
