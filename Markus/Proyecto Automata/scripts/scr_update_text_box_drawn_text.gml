///scr_update_text_box_drawn_text()
//Drawn text
var return_list = scr_get_boxed_text(text,max_height,sprite_width,horizontal_padding,vertical_padding,fonts_list);
drawn_text = ds_list_find_value(return_list,0);
text_font = ds_list_find_value(return_list,1);
ds_list_destroy(return_list);
//Box height
var new_height = max(string_height(drawn_text)+(vertical_padding*2),original_height);
image_yscale = new_height/original_height;
