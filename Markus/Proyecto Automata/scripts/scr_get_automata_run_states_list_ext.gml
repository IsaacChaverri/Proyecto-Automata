///scr_get_automata_run_states_list_ext(current_state,automata_run_states_list,current_step)
var arg_current_state = argument0;
var arg_automata_run_states_list = argument1;
var arg_current_step = argument2;

ds_list_add(arg_automata_run_states_list,arg_current_state);

if(instance_exists(arg_current_step)){
    var current_state_simultaneous_states_list = scr_find_simultaneous_states_list(arg_current_state);
    var current_state_simultaneous_states_list_size = ds_list_size(current_state_simultaneous_states_list);
    for(var i=0;i<current_state_simultaneous_states_list_size;i++){
        var temp_simultaneous_state = ds_list_find_value(current_state_simultaneous_states_list,i);
        with(temp_simultaneous_state){
            var transitions_list_size = ds_list_size(transitions_list);
            for(var j=0;j<transitions_list_size;j++){
                var temp_transition = ds_list_find_value(transitions_list,j);
                var temp_values = temp_transition.transition_values.values;
                if(temp_values != EPSILON and (scr_char_in_string(arg_current_step.number,temp_values) or temp_values == SIGMA)){
                    var next_state = temp_transition.state_2;
                    var steps_list = obj_disco_handler.steps_list;
                    var current_step_index = ds_list_find_index(steps_list,arg_current_step);
                    var next_step_index = current_step_index+1;
                    var steps_list_size = ds_list_size(steps_list);
                    var next_step = noone;
                    if(next_step_index < steps_list_size){
                        next_step = ds_list_find_value(steps_list,next_step_index);
                    }
                    scr_get_automata_run_states_list_ext(next_state,arg_automata_run_states_list,next_step);
                }
            }
        }
    }
}

return arg_automata_run_states_list;
