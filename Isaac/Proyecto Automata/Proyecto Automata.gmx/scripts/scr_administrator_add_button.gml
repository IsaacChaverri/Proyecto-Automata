///scr_administrator_add_button()

//Update global variables
CURRENT_PAGE_DATA = button.page.page_data;
EDITTING_LEVEL = false;

//Go To Level Creation Room
scr_room_goto(rm_level_creation);

//Destroy Dummy
instance_destroy();
