///scr_find_acronym(string)
var arg_string = argument0;

var acronym = "";

var words_list = scr_split_string(arg_string," ");
var words_list_size = ds_list_size(words_list);
for(var i=0;i<words_list_size;i++){
    var temp_word = ds_list_find_value(words_list,i);
    var word_first_letter = string_char_at(temp_word,1);
    var acronym_size = string_length(acronym);
    acronym = string_insert(word_first_letter,acronym,acronym_size+1);
}
acronym = string_upper(acronym);
return acronym;
