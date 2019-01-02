///scr_number_dial_window_number_button()
//Add Value
var number_dial_window = button.number_dial_window;
if(number_dial_window.values == "e" or number_dial_window.values == "E"){
    number_dial_window.values = "";
}
var values_length = string_length(button.number_dial_window.values);
number_dial_window.values = string_insert(button.value,number_dial_window.values,values_length+1);
//Destory Dummy
instance_destroy();
