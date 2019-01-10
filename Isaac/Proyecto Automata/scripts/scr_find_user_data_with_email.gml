///scr_find_user_data_with_email(email)
var arg_email = argument0;

var user_data = noone;

var users_data_list_size = ds_list_size(USERS_DATA_LIST);
for(var i=0;i<users_data_list_size;i++){
    var temp_user_data = ds_list_find_value(USERS_DATA_LIST,i);
    if(temp_user_data.email == arg_email){
        user_data = temp_user_data;
        break;
    }
}

return user_data;
