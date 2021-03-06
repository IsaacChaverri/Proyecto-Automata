///scr_create_number_dial_window(transition,hovered_state,editting)
var arg_transition = argument0;
var arg_hovered_state = argument1;
var arg_editting = argument2;
//Take Screenshot
var screenshot = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);
//Deactivate All
var deactivated_instances_list = scr_deactivate_all(false);
//Fade
scr_fade(0.75,0,MENU_FADE_COLOR,depth-10);
//Create Number Dial Window
var number_dial_window_x = room_width/2;
var number_dial_window_y = room_height/2;
var number_dial_window_depth = obj_fade.depth-1;
number_dial_window = scr_instance_create_depth(number_dial_window_x,number_dial_window_y,number_dial_window_depth,obj_number_dial_window);
with(number_dial_window){
    transition = arg_transition;
    hovered_state = arg_hovered_state;
    id.screenshot = screenshot;
    if(arg_editting){
        editting = true;
        values = arg_transition.transition_values.values;
    }
}
