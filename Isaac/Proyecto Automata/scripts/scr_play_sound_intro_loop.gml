///scr_play_sound_intro_loop(sound,intro_length,loop_length)
var arg_sound = argument0;
var arg_intro_length = argument1;
var arg_loop_length = argument2;

with(obj_audio_manager){
    audio_stop_sound(sound);
    instance_destroy();
}

with(instance_create_depth(0,0,0,obj_audio_manager)){
    sound = arg_sound;
    intro_length = arg_intro_length;
    loop_length = arg_loop_length;
    total_length = intro_length+loop_length;
    bgm = audio_play_sound(sound,100,false);
}
