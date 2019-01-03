///scr_number_dial_window_edit_accept_button()

//Reactivate Instances
scr_reactivate_all();
//Destroy Number Dial Window
var number_dial_window = button.number_dial_window;
with(number_dial_window){
    //Edit Transition Values
    with(transition.transition_values){
        values = other.values;
    }
    instance_destroy();
}
//Destroy Dummy
instance_destroy();
