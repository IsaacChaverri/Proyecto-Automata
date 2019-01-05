///scr_administrator_edit_button()

//Update global variables
CURRENT_LEVEL_DATA = button.administrator_button.level_data;
EDITTING_LEVEL = true;

//Go To Level Creation Room
scr_room_goto(rm_level_creation);

//Destroy Dummy
instance_destroy();
