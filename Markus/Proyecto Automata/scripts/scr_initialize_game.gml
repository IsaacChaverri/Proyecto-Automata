///scr_initialize_game()
randomize();
scr_initialize_global_variables();
scr_load();
scr_instance_create_depth(0,0,0,obj_general_control);
GENERAL_VOLUME = 1;
audio_master_gain(GENERAL_VOLUME);
window_set_fullscreen(true);
scr_room_goto(rm_levels);
