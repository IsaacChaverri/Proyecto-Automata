///scr_disco_description_button()
//Take Screenshot
var screenshot = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);
//Deactivate All
var deactivated_instances_list = scr_deactivate_all(true);
//Fade
scr_fade(0.75,0,MENU_FADE_COLOR,button.depth-10);
//Create Description Window
var description_window_x = room_width/2;
var description_window_y = room_height/2;
var description_window_depth = obj_fade.depth-1;
description_window = scr_instance_create_depth(description_window_x,description_window_y,description_window_depth,obj_description_window);
with(description_window){
    description_text = CURRENT_LEVEL_DATA.description;
    id.screenshot = screenshot;
}
//Destroy Dummy
instance_destroy();
