///scr_find_in_list(list,value)
var arg_list = argument0;
var arg_value = argument1;

var found_value = noone;

for(var i=0;i<ds_list_size(arg_list);i++){
    var temp_value = ds_list_find_value(arg_list,i);
    if(temp_value == arg_value){
        found_value = temp_value;
    }
}

return found_value;
