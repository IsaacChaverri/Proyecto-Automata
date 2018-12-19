/// scr_initialize_game
randomize();
scr_initialize_global_variables();
//scr_load();
instance_create(0,0,0,obj_general_control);
GENERAL_VOLUME = 1;
audio_master_gain(GENERAL_VOLUME);
//window_set_fullscreen(true);
surface_resize(application_surface,display_get_width(),display_get_height());
room_goto(rm_start);
