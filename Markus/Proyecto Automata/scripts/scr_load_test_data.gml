///scr_load_test_data()

//Create Users Data
var principal_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(principal_user_data){
    persistent = true;
    name = "Principal";
    email = "BOP.O.BOT.GAME@GMAIL.COM";
    type = "Administrator";
    encrypted_password = base64_encode("MarkusIsaac69");
}
ds_list_add(USERS_DATA_LIST,principal_user_data);


//Create Pages Data
//Principal
var new_page_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(new_page_data){
    persistent = true;
    creator_user_data = principal_user_data;
    levels_data_list = ds_list_create();
    //1
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 4;
        description = "Realice un autómata que acepte 123.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //2
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "12223";
        max_states = 3;
        description = "Realice un autómata que acepte n cadenas de 2s entre 2 números.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //3
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "1231234";
        max_states = 4;
        description = "Realice un autómata que acepte n cadenas de 123 y termine en 4";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //4
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "123";
        max_states = 2;
        description = "Realice un autómata que acepte 123, usando máximo 2 estados.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //5
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "3121324";
        max_states = 2;
        description = "Realice un autómata que acepte n combinaciones de 123 y termine en 4.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //6
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "1121131";
        max_states = 3;
        description = "";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //7
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "312213123";
        max_states = 4;
        description = "Realice un autómata que acepte 123 con cualquier prefijo.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //8
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "1231233";
        max_states = 3;
        description = "";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //9
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "0123450";
        max_states = 3;
        description = "";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
    //10
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "010203045";
        max_states = 3;
        description = "";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,other.creator_user_data.email);
    }
    ds_list_add(levels_data_list,new_level_data);
}
ds_list_add(PAGES_DATA_LIST,new_page_data);

scr_save();
