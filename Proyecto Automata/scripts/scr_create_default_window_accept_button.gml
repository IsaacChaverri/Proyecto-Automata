///scr_create_default_window_accept_button()
var accept_button = scr_instance_create_depth(0,0,0,obj_text_button);
with(accept_button){
    text = "Aceptar";
    text_font = fnt_montserrat_36;
    sprite_index = spr_general_white_button;
    script = scr_default_accept_button;
}

return accept_button;
