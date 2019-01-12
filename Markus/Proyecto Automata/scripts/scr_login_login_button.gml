///scr_login_login_button()

//Get inputs
var email_input = string_upper(button.login_handler.email_text_field.text);
var password_input = button.login_handler.password_text_field.text;
//Get login user data
var login_user_data = noone;
var users_data_list_size = ds_list_size(USERS_DATA_LIST);
for(var i=0;i<users_data_list_size;i++){
    var temp_user_data = ds_list_find_value(USERS_DATA_LIST,i);
    with(temp_user_data){
        var encrypted_password_input = base64_encode(password_input);
        if(email == email_input and encrypted_password == encrypted_password_input){
            login_user_data = temp_user_data;
        }
    }
}
//Check if all text fields are filled
if(email_input != "" and password_input != ""){
    //Check if user exists
    if(instance_exists(login_user_data)){
        CURRENT_USER_DATA = login_user_data;
        scr_save();
        scr_room_goto(rm_levels);
    }else{
        var window_title = "Error";
        var window_description = "El usuario o contraseña ingresados son incorrectos.";
        var window_buttons_list = ds_list_create();
        var window_accept_button = scr_create_default_window_accept_button();
        ds_list_add(window_buttons_list,window_accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
        
        button.login_handler.password_text_field.text = "";
    }
}else{
    var window_title = "Error";
    var window_description = "No se rellenaron todos los espacios necesarios.";
    var window_buttons_list = ds_list_create();
    var window_accept_button = scr_create_default_window_accept_button();
    ds_list_add(window_buttons_list,window_accept_button);
    var window = scr_create_window(window_title,window_description,window_buttons_list);
}

//Destroy Dummy
instance_destroy();
