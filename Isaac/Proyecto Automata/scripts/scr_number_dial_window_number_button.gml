///scr_number_dial_window_number_button()
//Add Value
var number_dial_window = button.number_dial_window;
if(number_dial_window.values == EPSILON or number_dial_window.values == SIGMA){
    number_dial_window.values = "";
}
var new_value = button.value;
var values_length = string_length(button.number_dial_window.values);
if(values_length > 0){
    for(var i=1;i<=values_length;i++){
        var temp_value = string_char_at(number_dial_window.values,i);
        if(temp_value > new_value){
            number_dial_window.values = string_insert(new_value,number_dial_window.values,i);
            break;
        }else{
            if(i == values_length){
                number_dial_window.values = string_insert(new_value,number_dial_window.values,i+1);
            }
        }
    }
}else{
    number_dial_window.values = string_insert(new_value,number_dial_window.values,1);
}
//Destory Dummy
instance_destroy();
