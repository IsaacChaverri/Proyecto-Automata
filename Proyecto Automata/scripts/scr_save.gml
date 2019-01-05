///scr_save()

ini_open("save.dat");
//Users Data
var users_data_list_size = ds_list_size(USERS_DATA_LIST);
ini_write_real("USERS_DATA","amount",users_data_list_size);
for(var i=0;i<users_data_list_size;i++){
    var temp_user_data = ds_list_find_value(USERS_DATA_LIST,i);
    with(temp_user_data){
        ini_write_string("USERS_DATA","name["+string(i)+"]",name);
        ini_write_string("USERS_DATA","email["+string(i)+"]",email);
        ini_write_string("USERS_DATA","type["+string(i)+"]",type);
    }
}
//Pages Data
var pages_data_list_size = ds_list_size(PAGES_DATA_LIST);
ini_write_real("PAGES_DATA","amount",pages_data_list_size);
for(var i=0;i<pages_data_list_size;i++){
    var temp_page_data = ds_list_find_value(PAGES_DATA_LIST,i);
    with(temp_page_data){
        //Creator user data
        ini_write_string("PAGES_DATA","creator_user_email["+string(i)+"]",creator_user_data.email);
        //Levels data
        var levels_data_list_size = ds_list_size(levels_data_list);
        ini_write_real("PAGES_DATA","levels_data_size["+string(i)+"]",levels_data_list_size);
        for(var j=0;j<levels_data_list_size;j++){
            var temp_level_data = ds_list_find_value(levels_data_list,j);
            with(temp_level_data){
                ini_write_string("LEVELS_DATA","steps["+string(i)+"]"+"["+string(j)+"]",steps);
                ini_write_real("LEVELS_DATA","max_states["+string(i)+"]"+"["+string(j)+"]",max_states);
                //Won users
                var won_users_list_size = ds_list_size(won_users_list);
                ini_write_real("LEVELS_DATA","won_users_amount["+string(i)+"]"+"["+string(j)+"]",won_users_list_size);
                for(var k=0;k<won_users_list_size;k++){
                    var temp_won_user_email = ds_list_find_value(won_users_list,k);
                    ini_write_string("WON_USERS","email["+string(i)+"]"+"["+string(j)+"]"+"["+string(k)+"]",temp_won_user_email);
                }
            }
        }
    }
}
//Others
var current_user_email = CURRENT_USER_DATA.email;
ini_write_string("OTHERS","current_user_email",current_user_email);
ini_close();
