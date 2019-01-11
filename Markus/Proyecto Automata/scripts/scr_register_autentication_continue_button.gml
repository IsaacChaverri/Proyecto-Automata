///scr_register_autentication_continue_button()

//Get inputs
var code_input = string_upper(button.register_autentication_handler.code_text_field.text);

//Check if all inputs are filled
if(code_input != ""){
    //Check if code is correct
    if(code_input == TEMP_USER_DATA.autentication_code){
        //Add User Data
        ds_list_add(USERS_DATA_LIST,TEMP_USER_DATA);
        CURRENT_USER_DATA = TEMP_USER_DATA;
        scr_save();
        //Create Success Window
        var window_title = "Bienvenido!";
        var window_description = "Tu cuenta se ha autenticado.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        with(window_accept_button){
            script = scr_register_autentication_accept_button;
        }
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list)
    }else{
        var window_title = "Error";
        var window_description = "El código de autenticación ingresado es incorrecto.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
        
        button.register_autentication_handler.code_text_field.text = "";
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
