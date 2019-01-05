///scr_get_automata_run_simultaneous_states_list(first_state)
var arg_first_state = argument0;

var automata_run_simultaneous_states_list = ds_list_create();

var first_state_simultaneous_states_list = scr_find_simultaneous_states_list(arg_first_state);

var first_step = ds_list_find_value(obj_disco_handler.steps_list,0);
automata_run_simultaneous_states_list = scr_get_automata_run_simultaneous_states_list_ext(first_state_simultaneous_states_list,automata_run_simultaneous_states_list,first_step);

return automata_run_simultaneous_states_list;
