///scr_get_automata_run_states_list(first_state)
var arg_first_state = argument0;

var first_step = ds_list_find_value(obj_disco_handler.steps_list,0);
var automata_run_states_list = ds_list_create();
automata_run_states_list = scr_get_automata_run_states_list_ext(arg_first_state,automata_run_states_list,first_step);

return automata_run_states_list;
