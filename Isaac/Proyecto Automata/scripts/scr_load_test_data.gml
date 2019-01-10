///scr_load_test_data()

//Create Users Data
var principal_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(principal_user_data){
    persistent = true;
    name = "Principal";
    email = "";
    type = "";
}
ds_list_add(USERS_DATA_LIST,principal_user_data);
var erika_schumann_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(erika_schumann_user_data){
    persistent = true;
    name = "Erika Schumann";
    email = "erika_schumann@gmail.com";
    type = "Administrator";
}
ds_list_add(USERS_DATA_LIST,erika_schumann_user_data);
var esteban_arias_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(esteban_arias_user_data){
    persistent = true;
    name = "Esteban Arias";
    email = "esteban_arias@gmail.com";
    type = "Administrator";
}
ds_list_add(USERS_DATA_LIST,esteban_arias_user_data);
var ignacio_trejos_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(ignacio_trejos_user_data){
    persistent = true;
    name = "Ignacio Trejos";
    email = "ignacio_trejos@gmail.com";
    type = "Administrator";
}
ds_list_add(USERS_DATA_LIST,ignacio_trejos_user_data);
var kirstein_gatjens_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(kirstein_gatjens_user_data){
    persistent = true;
    name = "Kirstein Gatjens";
    email = "kirstein_gatjens@gmail.com";
    type = "Administrator";
}
ds_list_add(USERS_DATA_LIST,kirstein_gatjens_user_data);
var markus_villalobos_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(markus_villalobos_user_data){
    persistent = true;
    name = "";
    email = "markus_villalobos@gmail.com";
    type = "Estudiante";
}
ds_list_add(USERS_DATA_LIST,markus_villalobos_user_data);
var isaac_chaverri_user_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(isaac_chaverri_user_data){
    persistent = true;
    name = "";
    email = "isaac_chaverri@gmail.com";
    type = "Estudiante";
}
ds_list_add(USERS_DATA_LIST,isaac_chaverri_user_data);

CURRENT_USER_DATA = erika_schumann_user_data;


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
        steps = "1231233124";
        max_states = 4;
        description = "Realice un automata que reciba ciclos de 123 separados por algun numero y termine en 124.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,"erika_schumann@gmail.com");
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "Realice un automata que reciba todos los numeros pero termine en 0.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,"erika_schumann@gmail.com");
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,"erika_schumann@gmail.com");
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,"erika_schumann@gmail.com");
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,"erika_schumann@gmail.com");
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
}
ds_list_add(PAGES_DATA_LIST,new_page_data);
//Erika Schumann
var new_page_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(new_page_data){
    persistent = true;
    creator_user_data = erika_schumann_user_data;
    levels_data_list = ds_list_create();
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "1231233124";
        max_states = 4;
        description = "Realice un automata que reciba ciclos de 123 separados por algun numero y termine en 124.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,"erika_schumann@gmail.com");
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "Realice un automata que reciba todos los numeros pero termine en 0.";
        won_users_list = ds_list_create();
        ds_list_add(won_users_list,"erika_schumann@gmail.com");
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "9876543210";
        max_states = 10;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
}
ds_list_add(PAGES_DATA_LIST,new_page_data);
//Esteban Arias
var new_page_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(new_page_data){
    persistent = true;
    creator_user_data = esteban_arias_user_data;
    levels_data_list = ds_list_create();
}
ds_list_add(PAGES_DATA_LIST,new_page_data);
//Ignacio Trejos
var new_page_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(new_page_data){
    persistent = true;
    creator_user_data = ignacio_trejos_user_data;
    levels_data_list = ds_list_create();
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "05460";
        max_states = 1;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
}
ds_list_add(PAGES_DATA_LIST,new_page_data);
//Kirstein Gatjens
var new_page_data = scr_instance_create_depth(0,0,0,obj_dummy);
with(new_page_data){
    persistent = true;
    creator_user_data = kirstein_gatjens_user_data;
    levels_data_list = ds_list_create();
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "05460";
        max_states = 1;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "86189";
        max_states = 5;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "86189";
        max_states = 5;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
    var new_level_data = scr_instance_create_depth(0,0,0,obj_dummy);
    with(new_level_data){
        persistent = true;
        steps = "86189";
        max_states = 5;
        description = "";
        won_users_list = ds_list_create();
    }
    ds_list_add(levels_data_list,new_level_data);
}
ds_list_add(PAGES_DATA_LIST,new_page_data);

scr_save();
