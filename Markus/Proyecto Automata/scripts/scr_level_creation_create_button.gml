///scr_level_creation_create_button()

//Get string inputs
var steps_input = button.level_creation_handler.steps_text_field.text;
var max_states_input = button.level_creation_handler.max_states_text_field.text;
var description_input = button.level_creation_handler.description_text_box.text;

if(steps_input != "" and max_states_input != ""){
    //Create level
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = steps_input;
        max_states = real(max_states_input);
        description = description_input;
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,CURRENT_PAGE_DATA.creator_user_data.email);
    }
    ds_list_add(CURRENT_PAGE_DATA.levels_data_list,new_level_data);
    
    //Save
    scr_save();
    
    //Go to levels selection room
    scr_room_goto(rm_levels);
}

//Destroy Dummy
instance_destroy();
