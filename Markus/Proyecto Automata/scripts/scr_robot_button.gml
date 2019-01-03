///scr_robot_button()

//Get Automata Run States List
var first_state = obj_automata_handler.start_arrow.first_state;
var automata_run_states_list = scr_get_automata_run_states_list(first_state);

//Check if automata works
var automata_works = scr_test_automata_states_list(automata_run_states_list);

//Win/Lose
if(automata_works){
    var automata_win_sound = audio_play_sound(sfx_automata_win,10,false);
}else{
    var automata_lose_sound = audio_play_sound(sfx_automata_lose,10,false);
}

//Destroy Dummy
instance_destroy();
