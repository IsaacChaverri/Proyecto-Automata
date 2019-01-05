///scr_level_creation_edit_button()

//Get string inputs
var steps_input = button.level_creation_handler.steps_text_field.text;
var max_states_input = button.level_creation_handler.max_states_text_field.text;

if(steps_input != "" and max_states_input != ""){
    //Edit level
    with(CURRENT_LEVEL_DATA){
        steps = steps_input;
        max_states = real(max_states_input);
    }
    
    //Save
    scr_save();
    
    //Go to levels selection room
    scr_room_goto(rm_levels);
}

//Destroy Dummy
instance_destroy();
