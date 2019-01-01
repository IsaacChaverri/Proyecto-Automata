///scr_reactivate_all()
var deactivated_instances_list_size = ds_list_size(DEACTIVATED_INSTANCES_LIST);
for(var i=0;i<deactivated_instances_list_size;i++){
    var temp_deactivated_instance = ds_list_find_value(DEACTIVATED_INSTANCES_LIST,i);
    instance_activate_object(temp_deactivated_instance);
}
ds_list_clear(DEACTIVATED_INSTANCES_LIST);
