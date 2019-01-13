///scr_load()

if(file_exists("save.dat")){
    ini_open("save.dat");
    //Users Data
    var users_data_amount = ini_read_real("USERS_DATA","amount",0);
    for(var i=0;i<users_data_amount;i++){
        var temp_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
        with(temp_user_data){
            persistent = true;
            name = ini_read_string("USERS_DATA","name["+string(i)+"]","");
            email = ini_read_string("USERS_DATA","email["+string(i)+"]","");
            type = ini_read_string("USERS_DATA","type["+string(i)+"]","");
            encrypted_password = ini_read_string("USERS_DATA","encrypted_password["+string(i)+"]","");
        }
        ds_list_add(USERS_DATA_LIST,temp_user_data);
    }
    //Pages Data
    var pages_data_amount = ini_read_real("PAGES_DATA","amount",0);
    for(var i=0;i<pages_data_amount;i++){
        var temp_page_data = scr_instance_create_depth(0,0,0,obj_dummy);
        with(temp_page_data){
            persistent = true;
            //Creator user data
            var creator_user_email = ini_read_string("PAGES_DATA","creator_user_email["+string(i)+"]","");
            creator_user_data = scr_find_user_data_with_email(creator_user_email);
            //Levels data
            levels_data_list = ds_list_create();
            var levels_data_list_size = ini_read_real("PAGES_DATA","levels_data_size["+string(i)+"]","");
            for(var j=0;j<levels_data_list_size;j++){
                var temp_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
                with(temp_level_data){
                    persistent = true;
                    steps = ini_read_string("LEVELS_DATA","steps["+string(i)+"]"+"["+string(j)+"]","");
                    max_states = real(ini_read_string("LEVELS_DATA","max_states["+string(i)+"]"+"["+string(j)+"]",""));
                    description = ini_read_string("LEVELS_DATA","description["+string(i)+"]"+"["+string(j)+"]","");
                    //Won users
                    won_users_list = ds_list_create();
                    var won_users_amount = ini_read_real("LEVELS_DATA","won_users_amount["+string(i)+"]"+"["+string(j)+"]","");
                    for(var k=0;k<won_users_amount;k++){
                        var temp_won_user_email = ini_read_string("WON_USERS","email["+string(i)+"]"+"["+string(j)+"]"+"["+string(k)+"]","");
                        ds_list_add(won_users_list,temp_won_user_email);
                    }
                }
                ds_list_add(levels_data_list,temp_level_data);
            }
        }
        ds_list_add(PAGES_DATA_LIST,temp_page_data);
    }
    //Others
    var current_user_email = ini_read_string("OTHERS","current_user_email","");
    CURRENT_USER_DATA = scr_find_user_data_with_email(current_user_email);
    ini_close();
}else{
    scr_load_test_data();
}

//scr_activate_pages_data(false);
