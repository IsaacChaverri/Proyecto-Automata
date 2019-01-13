///scr_string_replace_all_characters(string,character)
var arg_string = argument0;
var arg_character = argument1;

var replaced_string = "";

var my_string_length = string_length(arg_string);
for(var i=1;i<=my_string_length;i++){
    replaced_string += arg_character;
}

return replaced_string;
