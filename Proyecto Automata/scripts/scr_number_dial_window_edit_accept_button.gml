///scr_number_dial_window_edit_accept_button()

//Reactivate Instances
scr_reactivate_all();
//Destroy Number Dial Window
var number_dial_window = button.number_dial_window;
with(number_dial_window){
    with(transition){
        //Edit Transition Values
        with(transition_values){
            values = number_dial_window.values;
        }
        //Update simultaneous final states
        if(transition_values.values == EPSILON){
            state_1_simultaneous_states_list = scr_find_simultaneous_states_list(state_1);
            state_1_simultaneous_states_list_size = ds_list_size(state_1_simultaneous_states_list);
            for(var i=0;i<state_1_simultaneous_states_list_size;i++){
                var temp_simultaneous_state = ds_list_find_value(state_1_simultaneous_states_list,i);
                with(temp_simultaneous_state){
                    state_is_final = other.state_1.state_is_final;
                }
            }
        }
    }
    instance_destroy();
}
//Destroy Dummy
instance_destroy();
