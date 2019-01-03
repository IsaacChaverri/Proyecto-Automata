///scr_number_dial_window_cancel_button()

//Destroy Number Dial Window
var number_dial_window = button.number_dial_window;
with(number_dial_window){
    //Destroy Transition
    with(transition){
        instance_destroy();
    }
    instance_destroy();
}
//Destroy Dummy
instance_destroy();
