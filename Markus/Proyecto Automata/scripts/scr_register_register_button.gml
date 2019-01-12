///scr_register_register_button()

//Get inputs
var email_input = string_upper(button.register_handler.email_text_field.text);
var password_input = button.register_handler.password_text_field.text;
var confirm_password_input = button.register_handler.confirm_password_text_field.text;

//Check if filled all text fields
if(email_input != "" and password_input != "" and confirm_password_input != ""){
    //Check if email already exists
    var email_already_exists = false;
    var users_data_list_size = ds_list_size(USERS_DATA_LIST);
    for(var i=0;i<users_data_list_size;i++){
        var temp_user_data = ds_list_find_value(USERS_DATA_LIST,i);
        with(temp_user_data){
            if(email == email_input){
                email_already_exists = true;
            }
        }
    }
    if(email_already_exists){
        var window_title = "Error";
        var window_description = "La cuenta de correo ingresada ya existe.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
    }else{
        //Check if passwords are the same
        if(password_input == confirm_password_input){
            //Create new user data
            TEMP_USER_DATA = scr_instance_create_depth(0,0,0,obj_dummy);
            with(TEMP_USER_DATA){
                persistent = true;
                name = "";
                email = email_input;
                encrypted_password = base64_encode(password_input);
                type = "Student";
                autentication_code = "AAAAAA";//string_upper(scr_generate_random_string(AUTENTICATION_CODE_LENGTH));
            }
            
            //Create email autentication window
            var window_title = "Sólo un paso más";
            var window_description = "Se ha enviado un código de autenciación a tu correo.";
            var window_buttons_list = ds_list_create();
            var window_accept_button = scr_create_default_window_accept_button();
            with(window_accept_button){
                script = scr_register_send_autentication_accept_button;
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
            
            button.register_handler.password_text_field.text = "";
            button.register_handler.confirm_password_text_field.text = "";
        }
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
