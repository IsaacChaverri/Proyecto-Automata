///scr_string_get_char_index(string,char)
var arg_string = argument0;
var arg_char = argument1;

var char_index = undefined;

var my_string_length = string_length(arg_string);
for(var i=1;i<=my_string_length;i++){
    var temp_char = string_char_at(arg_string,i);
    if(temp_char == arg_char){
        char_index = i;
        break;
    }
}

return char_index;
