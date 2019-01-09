///scr_transition_value_is_usable(transition,value)
var arg_transition = argument0;
var arg_value = argument1;

var value_is_usable = true;

//Check if value is already used
var state_1 = arg_transition.state_1;
instance_activate_object(obj_state);
var simultaneous_states_list = scr_find_simultaneous_states_list(state_1);
var simultaneous_states_list_size = ds_list_size(simultaneous_states_list);
for(var i=0;i<simultaneous_states_list_size;i++){
    var temp_state = ds_list_find_value(simultaneous_states_list,i);
    with(temp_state){
        var transitions_list_size = ds_list_size(transitions_list);
        for(var j=0;j<transitions_list_size;j++){
            var temp_transition = ds_list_find_value(transitions_list,j);
            if(temp_transition != arg_transition){
                var temp_values = temp_transition.transition_values.values;
                if(arg_value != EPSILON){
                    if(arg_value == SIGMA){
                        if(temp_values != EPSILON){
                            value_is_usable = false;
                        }
                    }else{
                        if((scr_char_in_string(arg_value,temp_values) and temp_values != EPSILON) or temp_values == SIGMA){
                            value_is_usable = false;
                        }
                    }
                }
            }
        }
    }
}
instance_deactivate_object(obj_state);
//Check if transition is cycle
if(arg_transition.transition_is_cycle and arg_value == EPSILON){
    value_is_usable = false;
}
//Check if value is not in steps
var value_in_steps = false;
if(arg_value != EPSILON and arg_value != SIGMA){
    instance_activate_object(obj_disco_handler);
    instance_activate_object(obj_step);
    var steps_list = obj_disco_handler.steps_list;
    var steps_list_size = ds_list_size(steps_list);
    for(var i=0;i<steps_list_size;i++){
        var temp_step = ds_list_find_value(steps_list,i);
        if(arg_value == temp_step.number){
            value_in_steps = true;
        }
    }
    instance_deactivate_object(obj_disco_handler);
    instance_deactivate_object(obj_step);
}else{
    value_in_steps = true;
}
if(not value_in_steps){
    value_is_usable = false;
}

return value_is_usable;
