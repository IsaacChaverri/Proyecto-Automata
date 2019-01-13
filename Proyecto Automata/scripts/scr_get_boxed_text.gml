///scr_get_boxed_text(text,box_max_height,box_width,horizontal_padding,vertical_padding,fonts_list)
// returns a list with (boxed_text,text_font)
var arg_text = argument0;
var arg_box_max_height = argument1;
var arg_box_width = argument2;
var arg_horizontal_padding = argument3;
var arg_vertical_padding = argument4;
var arg_fonts_list = argument5;

var boxed_text = "";

var text_font = ds_list_find_value(arg_fonts_list,0);
var text_max_width = arg_box_width-(arg_horizontal_padding*2);
var text_max_height = arg_box_max_height-(arg_vertical_padding*2);
var words_list = scr_split_string(arg_text," ");
var words_list_size = ds_list_size(words_list);
for(var i=0;i<words_list_size;i++){
    draw_set_font(text_font);
    var temp_word = ds_list_find_value(words_list,i);
    var word_separator = " ";
    if(i == 0){
        word_separator = "";
    }
    var new_text = boxed_text+word_separator+temp_word;
    var new_text_width = string_width(new_text);
    var new_text_is_valid = true;
    if(new_text_width > text_max_width){
        word_separator = "#";
        new_text = boxed_text+word_separator+temp_word;
        new_text_width = string_width(new_text);
        new_text_height = string_height(new_text);
        if(new_text_width > text_max_width or new_text_height > text_max_height){
            new_text_is_valid = false;
            var current_font_index = ds_list_find_index(arg_fonts_list,text_font);
            var next_font_index = current_font_index+1;
            var fonts_list_size = ds_list_size(arg_fonts_list);
            if(next_font_index < fonts_list_size){
                text_font = ds_list_find_value(arg_fonts_list,next_font_index);
                boxed_text = "";
                i = -1;
            }else{
                break;
            }
        }
    }
    if(new_text_is_valid){
        boxed_text = new_text;
    }
}

var return_list = ds_list_create();
ds_list_add(return_list,boxed_text,text_font);
return return_list;
