///scr_number_dial_window_accept_button()

//Reactivate Instances
scr_reactivate_all();
//Destroy Number Dial Window
var number_dial_window = button.number_dial_window;
with(number_dial_window){
    //Place Transition
    with(transition){
        //Assign State 2
        state_2 = other.hovered_state;
        if(not transition_is_cycle){
            //Check if transition is double
            with(obj_transition){
                if(id != other.id){
                    if(other.state_1 == state_2 and other.state_2 == state_1){
                        transition_is_double = true;
                        other.transition_is_double = true;
                    }
                }
            }
        }
        //Create transition values
        var transition_values_x = (arrow_start_x+arrow_end_x)/2;
        var transition_values_y = (arrow_start_y+arrow_end_y)/2;
        var transition_values_values = other.values;
        transition_values = scr_instance_create_depth(transition_values_x,transition_values_y,depth-1,obj_transition_values);
        with(transition_values){
            transition = other.id;
            values = transition_values_values;
        }
        //Select transition
        state_1.automata_handler.selected_object = id;
        //Add transition to state 1
        ds_list_add(state_1.transitions_list,id);
        //Change state
        current_state = "PLACED";
    }
    instance_destroy();
}
//Destroy Dummy
instance_destroy();
