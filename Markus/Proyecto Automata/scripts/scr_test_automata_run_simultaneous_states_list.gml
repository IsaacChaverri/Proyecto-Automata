///scr_test_automata_run_simultaneous_states_list(automata_run_simultaneous_states_list)
var arg_automata_run_simultaneous_states_list = argument0;

var first_simultaneous_states_list = ds_list_find_value(arg_automata_run_simultaneous_states_list,0);
var first_step = ds_list_find_value(obj_disco_handler.steps_list,0);
var automata_works = scr_test_automata_run_simultaneous_states_list_ext(first_simultaneous_states_list,first_step);

return automata_works;
