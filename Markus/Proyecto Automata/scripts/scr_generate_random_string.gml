///scr_generate_random_string(length)
var arg_length = argument0;

var random_string = "";

for(var i=0;i<=arg_length;i++){
    var random_char = choose("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9");
    random_string += random_char;
}

return random_string;
