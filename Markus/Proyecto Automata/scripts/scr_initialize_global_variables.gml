///scr_initialize_global_variables()

//Gestures
globalvar CURRENT_GESTURE; CURRENT_GESTURE = "OFF";
globalvar GESTURE_IS_DOUBLE; GESTURE_IS_DOUBLE = false;
globalvar SWIPE_HORIZONTAL_SPEED; SWIPE_HORIZONTAL_SPEED = 0;
globalvar SWIPE_VERTICAL_SPEED; SWIPE_VERTICAL_SPEED = 0;
globalvar SWIPE_SPEED; SWIPE_SPEED = 0;

//User
globalvar USERS_DATA_LIST; USERS_DATA_LIST = ds_list_create();
globalvar CURRENT_USER_DATA; CURRENT_USER_DATA = noone;
globalvar TEMP_USER_DATA; TEMP_USER_DATA = noone;

//Levels
globalvar PAGES_DATA_LIST; PAGES_DATA_LIST = ds_list_create();
globalvar CURRENT_PAGE_DATA; CURRENT_PAGE_DATA = noone;
globalvar CURRENT_LEVEL_DATA; CURRENT_LEVEL_DATA = noone;

//Level Creation
globalvar EDITTING_LEVEL; EDITTING_LEVEL = false;

//Sound
globalvar GENERAL_VOLUME; GENERAL_VOLUME = 0;

//Others
globalvar SHOW_DEBUG_OVERLAY; SHOW_DEBUG_OVERLAY = true;
globalvar DEACTIVATED_INSTANCES_LIST; DEACTIVATED_INSTANCES_LIST = ds_list_create();
