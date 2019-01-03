///scr_test_automata_run_simultaneous_states_list_ext(current_simultaneous_states_list,current_step)
var arg_current_simultaneous_states_list = argument0;
var arg_current_step = argument1;

var automata_worked = false;

var current_simultaneous_states_list_size = ds_list_size(arg_current_simultaneous_states_list);
for(var i=0;i<current_simultaneous_states_list_size;i++){
    if(not automata_worked){
        var temp_simultaneous_state = ds_list_find_value(arg_current_simultaneous_states_list,i);
        with(temp_simultaneous_state){
            if(instance_exists(arg_current_step)){
                var transitions_list_size = ds_list_size(transitions_list);
                for(var j=0;j<transitions_list_size;j++){
                    var temp_transition = ds_list_find_value(transitions_list,j);
                    var temp_values = temp_transition.transition_values.values;
                    if(scr_char_in_string(arg_current_step,temp_values) or temp_values == SIGMA){
                        
                    }
                }
            }else if(state_is_final){
                automata_worked = true;
            }
        }
    }else{
        break;
    }
}

return automata_worked;
