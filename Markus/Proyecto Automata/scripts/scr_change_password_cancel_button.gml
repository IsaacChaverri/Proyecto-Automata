///scr_change_password_cancel_button()

//Update temp user data
TEMP_USER_DATA = noone;

//Go to login room
scr_room_goto(rm_login);

//Destroy dummy
instance_destroy();
