///scr_deactivate_all(not_me)
var arg_not_me = argument0;

//Deactivate All
with(all){
    ds_list_add(DEACTIVATED_INSTANCES_LIST,id);
    instance_deactivate_object(id);
}
//Activate Important Instances
//Me
if(arg_not_me){
    instance_activate_object(id);
    scr_ds_list_delete_value(DEACTIVATED_INSTANCES_LIST,id);
}
//General Control
instance_activate_object(obj_general_control);
scr_ds_list_delete_value(DEACTIVATED_INSTANCES_LIST,obj_general_control);
//Pages Data
var pages_data_list_size = ds_list_size(PAGES_DATA_LIST);
for(var i=0;i<pages_data_list_size;i++){
    var temp_page_data = ds_list_find_value(PAGES_DATA_LIST,i);
    with(temp_page_data){
        var levels_data_list_size = ds_list_size(levels_data_list);
        for(var j=0;j<levels_data_list_size;j++){
            var temp_level_data = ds_list_find_value(levels_data_list,i);
            instance_activate_object(temp_level_data);
            scr_ds_list_delete_value(DEACTIVATED_INSTANCES_LIST,temp_level_data);
        }
    }
    instance_activate_object(temp_page_data);
    scr_ds_list_delete_value(DEACTIVATED_INSTANCES_LIST,temp_page_data);
}
