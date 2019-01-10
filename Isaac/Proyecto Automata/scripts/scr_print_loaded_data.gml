///scr_print_loaded_data()

//Users Data
show_debug_message("Users Data");
var users_data_list_size = ds_list_size(USERS_DATA_LIST);
for(var i=0;i<users_data_list_size;i++){
    var temp_user_data = ds_list_find_value(USERS_DATA_LIST,i);
    with(temp_user_data){
        show_debug_message("User Data: "+string(i));
        show_debug_message("Email: "+string(email));
        show_debug_message("Name: "+string(name));
        show_debug_message("Type: "+string(type));
        show_debug_message("");
    }
}
show_debug_message("");

//Pages Data
show_debug_message("Pages Data");
var pages_data_list_size = ds_list_size(PAGES_DATA_LIST);
for(var i=0;i<pages_data_list_size;i++){
    show_debug_message("Page Data: "+string(i));
    var temp_page_data = ds_list_find_value(PAGES_DATA_LIST,i);
    with(temp_page_data){
        show_debug_message("Creator: "+string(creator_user_data.email));
        var levels_data_list_size = ds_list_size(levels_data_list);
        for(var j=0;j<levels_data_list_size;j++){
            var temp_level_data = ds_list_find_value(levels_data_list,j);
            with(temp_level_data){
                show_debug_message("Steps: "+string(steps));
                show_debug_message("Max States: "+string(max_states));
                var won_users_list_size = ds_list_size(won_users_list);
                for(var k=0;k<won_users_list_size;k++){
                    var temp_won_user_email = ds_list_find_value(won_users_list,k);
                    show_debug_message("Won User: "+string(temp_won_user_email));
                    show_debug_message("");
                }
            }
            show_debug_message("");
        }
    }
    show_debug_message("");
}
show_debug_message("");

//Others
show_debug_message("Current User: "+string(CURRENT_USER_DATA.email));
show_debug_message("");
