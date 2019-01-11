///scr_deactivate_all(not_me)
var arg_not_me = argument0;

//Deactivate All
with(all){
    if(not persistent){
        ds_list_add(DEACTIVATED_INSTANCES_LIST,id);
        instance_deactivate_object(id);
    }
}
//Activate Important Instances
//Me
if(arg_not_me){
    instance_activate_object(id);
    scr_ds_list_delete_value(DEACTIVATED_INSTANCES_LIST,id);
}
