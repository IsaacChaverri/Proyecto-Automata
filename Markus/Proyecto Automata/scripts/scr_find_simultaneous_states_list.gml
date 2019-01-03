///scr_find_simultaneous_states_list(state)
var arg_state = argument0;

var simultaneous_states_list = ds_list_create();

//Uncheck all states
with(obj_state){
    _checked = false;
}
//Find simultaneous states
simultaneous_states_list = scr_find_simultaneous_states_list_ext(arg_state,simultaneous_states_list);

return simultaneous_states_list;
