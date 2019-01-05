///scr_administrator_delete_button()

//Destroy administrator button
with(button.administrator_button){
    instance_destroy();
}

//Save
scr_save();

//Destroy dummy
instance_destroy();
