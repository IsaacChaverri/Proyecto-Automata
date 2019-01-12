///scr_text_field()

//Take Screenshot
var screenshot = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);
//Deactivate All
scr_deactivate_all(true);
instance_activate_object(button);
scr_ds_list_delete_value(DEACTIVATED_INSTANCES_LIST,button);
ds_list_add(DEACTIVATED_INSTANCES_LIST,obj_general_control);
instance_deactivate_object(obj_general_control);
//Fade
scr_fade(0.75,0,MENU_FADE_COLOR,button.depth-10);
button.locked = true;
//Create Screenshot Dummy
with(button){
    screenshot_dummy = scr_instance_create_depth(0,0,obj_fade.depth+1,obj_dummy);
    with(screenshot_dummy){
        id.screenshot = screenshot;
        draw_script = scr_screenshot_dummy_draw;
    }
}
//Create keyboard
button.string_async_id = get_string_async("",button.text);

//Destroy Dummy
instance_destroy();
