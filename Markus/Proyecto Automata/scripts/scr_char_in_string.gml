///scr_char_in_string(char,string)
var arg_char = argument0;
var arg_string = argument1;

var char_in_string = false;

var my_string_length = string_length(arg_string);
for(var i=1;i<=my_string_length;i++){
    var temp_char = string_char_at(arg_string,i);
    if(temp_char == arg_char){
        char_in_string = true;
        break;
    }
}

return char_in_string;
