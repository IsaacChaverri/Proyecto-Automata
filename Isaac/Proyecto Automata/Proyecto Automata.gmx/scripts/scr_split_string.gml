///scr_split_string(string,delimiter)
var arg_string = argument0;
var arg_delimiter = argument1;

var strings_list = ds_list_create();

var string_size = string_length(arg_string);
var current_string = "";
for(var i=1;i<=string_size;i++){
    var temp_char = string_char_at(arg_string,i);
    if(temp_char == arg_delimiter){
        ds_list_add(strings_list,current_string);
        current_string = "";
    }else{
        var current_string_size = string_length(current_string);
        current_string = string_insert(temp_char,current_string,current_string_size+1);
    }
}
ds_list_add(strings_list,current_string);
return strings_list;
