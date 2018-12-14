///scr_state_exists(name)
var arg_name = argument0;

var exists = false;
for(var i=0;i<ds_list_size(state_list);i++){
    var temp_state = ds_list_find_value(state_list,i);
    if(temp_state.name == arg_name){
        exists = true;
    }
}

return exists;
