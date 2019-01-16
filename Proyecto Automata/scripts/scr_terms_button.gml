///scr_terms_button()
switch(state.counter){
    case 0:
        //Destroy Window
        with(button._window){
            instance_destroy();
        }
        
        state.counter++;
        break;
    case 1:
        //Create Window
        var window_title = "Políticas de uso";
        var window_description = "Proyecto Autómata es un software creado para el curso de Proyecto de Ingeniería de Software de la carrera de Ingeniería en Computación del Instituto Tecnológico de Costa Rica. Cualquier uso externo que se le dé al software queda en manos de la persona que lo esté utilizando. El propósito original de la aplicación es enseñar a estudiantes del área de la computación a realizar autómatas, además de otorgarles una plataforma en dónde practicar y divertirse haciéndolo. Al registrarse en el sistema el usuario acepta que su correo y contraseña elegidos estén guardados en la base de datos del sistema, sin embargo, la contraseña ingresada por el usuario será debidamente encriptada y nunca estará visible en su forma desencriptada dentro de la base de datos, de manera que ningún desarrollador pueda observar la contraseña de ningún usuario.";
        var window_buttons_list = ds_list_create();
        var accept_button = scr_create_default_window_accept_button();
        ds_list_add(window_buttons_list,accept_button);
        var window = scr_create_window(window_title,window_description,window_buttons_list);
        with(window){
            description_max_height = GAME_HEIGHT/2;
        }
        //Destroy Dummy
        instance_destroy();
        break;
}
