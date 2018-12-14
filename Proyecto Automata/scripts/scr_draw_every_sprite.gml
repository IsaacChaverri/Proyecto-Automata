///scr_draw_every_sprite()
var sprite_counter = 0;
while(sprite_exists(sprite_counter)){
    for(var i=0;i<sprite_get_number(sprite_counter);i++){
        draw_sprite(sprite_counter,i,x,y);
    }
    	sprite_counter++;
}
instance_destroy();
