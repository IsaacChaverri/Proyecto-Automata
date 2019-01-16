///scr_about_button()

//Create Window
var window_title = "Acerca de";
var window_description = "Proyecto Autómata#Versión 1.0.0#16/1/2019##Creado por:#-Markus Villalobos#-Isaac Chaverri";
var window_buttons_list = ds_list_create();
var accept_button = scr_create_default_window_accept_button();
var terms_button = scr_instance_create_depth(0,0,0,obj_text_button);
with(terms_button){
    text = "Políticas de uso";
    text_font = fnt_montserrat_30;
    sprite_index = spr_general_white_button;
    script = scr_terms_button;
}
ds_list_add(window_buttons_list,terms_button,accept_button);
scr_create_window(window_title,window_description,window_buttons_list);

//Destroy Dummy
instance_destroy();
