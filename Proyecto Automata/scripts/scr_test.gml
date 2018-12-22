///scr_test(prefix)
var arg_prefix = argument0;
with(obj_state){
    var transitions_list_size = ds_list_size(transitions_list);
    for(var i=0;i<transitions_list_size;i++){
        var temp_transition = ds_list_find_value(transitions_list,i);
        show_debug_message(string(arg_prefix)+" object_get_name(temp_transition.object_index): "+string(object_get_name(temp_transition.object_index)));
    }
}
