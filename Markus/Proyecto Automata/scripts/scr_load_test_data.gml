///scr_load_test_data()

//Create Users Data
var principal_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(principal_user_data){
    persistent = true;
    name = "Principal";
    email = "MarkusVC64@gmail.com";
    type = "Administrator";
    encrypted_password = base64_encode("BopPopBot69");
}
ds_list_add(USERS_DATA_LIST,principal_user_data);


//Create Pages Data
//Principal
var new_page_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(new_page_data){
    persistent = true;
    creator_user_data = principal_user_data;
    levels_data_list = ds_list_create();
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 3;
        description = "Realice un autómata que haga 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
}
ds_list_add(PAGES_DATA_LIST,new_page_data);

scr_save();
