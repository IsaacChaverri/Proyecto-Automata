///scr_pause_window_continue_button()
//Reactivate Instances
scr_reactivate_all();
//Destroy Instances
with(button){
    with(pause_window){
        instance_destroy();
    }
    instance_destroy();
}
instance_destroy();
//Fade Out
scr_fade(0,0,c_ltgray,0);
