///scr_get_string_without_duplicates(string)
var arg_string = argument0;

var string_without_duplicates = "";

var my_string_length = string_length(arg_string);
for(var i=1;i<=my_string_length;i++){
    var char_is_repeated = false;
    var temp_i_char = string_char_at(arg_string,i);
    for(var j=i+1;j<=my_string_length;j++){
        var temp_j_char = string_char_at(arg_string,j);
        if(temp_i_char == temp_j_char){
            char_is_repeated = true;
            break;
        }
    }
    if(not char_is_repeated){
        string_without_duplicates = string_insert(temp_i_char,string_without_duplicates,i);
    }
}

return string_without_duplicates;
