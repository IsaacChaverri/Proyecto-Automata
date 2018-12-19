///scr_automata_trash_button()
with(obj_automata_handler){
    with(selected_object){
        instance_destroy();
    }
    selected_object = noone;
}
instance_destroy();
