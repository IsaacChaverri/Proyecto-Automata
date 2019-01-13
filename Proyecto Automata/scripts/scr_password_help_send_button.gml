///scr_password_help_send_button()

//Get inputs
var email_input = string_upper(button.password_help_handler.email_text_field.text);

//Check if all inputs filled
if(email_input != ""){
    //Check if email exists
    var temp_user_data = scr_find_user_data_with_email(email_input);
    if(instance_exists(temp_user_data)){
        //Update temp user data
        TEMP_USER_DATA = temp_user_data;
        with(TEMP_USER_DATA){
            autentication_code = "AAAAAA";//string_upper(scr_generate_random_string(AUTENTICATION_CODE_LENGTH));
        }
        //Create success window
        var window_title = "";
        var window_description = "Se ha enviado un código de recuperación de contraseña a tu correo.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        with(window_accept_button){
            script = scr_password_help_accept_button;
        }
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
    }else{
        var window_title = "Error";
        var window_description = "No hay ningún usuario con ese correo registrado en nuestro sistema.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
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
