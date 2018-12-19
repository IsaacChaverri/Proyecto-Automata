///scr_go_to_state(name,counter)
var arg_name = argument[0];
if(argument_count > 1){
    var arg_counter = argument[1];
}

if(not scr_state_exists(arg_name)){
    var new_state = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_state){
        _dummy_name = "state";
        name = arg_name;
        counter = 0;
        time = -1;
        step_script = scr_state_count_time;
    }
    ds_list_add(state_list,new_state);
}

state = scr_get_state(arg_name);
if(argument_count > 1){
    state.counter = arg_counter;
}

ds_list_add(state_queue,state);
