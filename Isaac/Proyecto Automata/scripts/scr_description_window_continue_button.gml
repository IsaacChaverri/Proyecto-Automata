///scr_description_window_continue_button()
//Reactivate Instances
scr_reactivate_all();
//Destroy Instances
with(button){
    with(description_window){
        instance_destroy();
    }
    instance_destroy();
}
instance_destroy();
//Fade Out
scr_fade(0,0,MENU_FADE_COLOR,0);
