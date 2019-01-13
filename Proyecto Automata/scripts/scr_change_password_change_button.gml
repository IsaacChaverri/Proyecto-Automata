///scr_change_password_change_button()

//Get inputs
var new_password_input = button.change_password_handler.new_password_text_field.text;
var confirm_password_input = button.change_password_handler.confirm_password_text_field.text;

//Check if all inputs are filled
if(new_password_input != "" and confirm_password_input != ""){
    //Check if passwords are the same
    if(new_password_input == confirm_password_input){
        //Change password
        with(TEMP_USER_DATA){
            encrypted_password = base64_encode(new_password_input);
        }
        scr_save();
        //Update temp user data
        TEMP_USER_DATA = noone;
        //Create success window
        var window_title = "Listo!";
        var window_description = "La contraseña se ha cambiado exitosamente.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        with(window_accept_button){
            script = scr_change_password_accept_button;
        }
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
    }else{
        var window_title = "Error";
        var window_description = "Las contraseñas ingresadas no son iguales.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
        
        button.change_password_handler.new_password_text_field.text = "";
        button.change_password_handler.confirm_password_text_field.text = "";
    }
}else{
    var window_title = "Error";
    var window_description = "No se rellenaron todos los espacios necesarios.";
    var window_buttons_list = ds_list_create();
    var window_accept_button = scr_create_default_window_accept_button();
    ds_list_add(window_buttons_list,window_accept_button);
    var window = scr_create_window(window_title,window_description,window_buttons_list);
}

//Destroy dummy
instance_destroy();
