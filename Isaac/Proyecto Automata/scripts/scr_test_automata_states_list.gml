///scr_test_automata_states_list(states_list)
var arg_states_list = argument0;

var automata_works = false;

var steps_list = obj_disco_handler.steps_list;
var states_list_size = ds_list_size(arg_states_list);
for(var i=0;i<states_list_size;i++){
    var temp_state = ds_list_find_value(arg_states_list,i);
    var current_step = ds_list_find_value(steps_list,i);
    if((current_step == undefined or not instance_exists(current_step)) and temp_state.state_is_final){
        automata_works = true;
    }
}

return automata_works;
