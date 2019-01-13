///scr_create_window(title,description,buttons_list)
var arg_title = argument0;
var arg_description = argument1;
var arg_buttons_list = argument2;

var window_depth = depth-10;

//Take Screenshot
var screenshot = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);
//Deactivate All
var deactivated_instances_list = scr_deactivate_all(true);
//Fade
scr_fade(0.75,0,MENU_FADE_COLOR,window_depth+1);
//Create Window
var window_x = GAME_WIDTH/2;
var window_y = GAME_HEIGHT/2;
var window = scr_instance_create_depth(window_x,window_y,window_depth,obj_window);
with(window){
    id.screenshot = screenshot;
    title = arg_title;
    description = arg_description;
    buttons_list = arg_buttons_list;
    var buttons_list_size = ds_list_size(buttons_list);
    for(var i=0;i<buttons_list_size;i++){
        var temp_button = ds_list_find_value(buttons_list,i);
        instance_activate_object(temp_button);
        with(temp_button){
            x = -9999;
            y = -9999;
            depth = other.depth-1;
        }
    }
}

return window;
