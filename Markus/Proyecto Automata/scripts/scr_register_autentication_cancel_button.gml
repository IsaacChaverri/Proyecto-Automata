///scr_register_autentication_cancel_button()

//Update new user data
with(TEMP_USER_DATA){
    instance_destroy();
}
TEMP_USER_DATA = noone;

//Go to login
scr_room_goto(rm_login);

//Destroy dummy
instance_destroy();
