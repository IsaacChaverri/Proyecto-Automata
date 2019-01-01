///scr_ds_list_delete_value(list,value)
var arg_list = argument0;
var arg_value = argument1;

var value_index = ds_list_find_index(arg_list,arg_value);
ds_list_delete(arg_list,value_index);
