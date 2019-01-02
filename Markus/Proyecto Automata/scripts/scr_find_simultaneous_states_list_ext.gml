///scr_find_simultaneous_states_list_ext(state,states_list)
var arg_state = argument0;
var arg_states_list = argument1;

ds_list_add(arg_states_list,arg_state);

with(arg_state){
    _checked = true;
    var transitions_list_size = ds_list_size(transitions_list);
    for(var i=0;i<transitions_list_size;i++){
        var temp_transition = ds_list_find_value(transitions_list,i);
        if(temp_transition.transition_values.values == EPSILON){
            var new_state = temp_transition.state_2;
            if(not new_state._checked){
                scr_find_simultaneous_states_list_ext(new_state,arg_states_list);
            }
        }
    }
}

return arg_states_list;
