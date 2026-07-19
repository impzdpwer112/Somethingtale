crash_timer += 1;


if (crash_timer < phase1_duration) {
    window_set_caption("Somethingtale (Not Responding)");
    
    if (white_alpha < 0.5) {
        white_alpha += 0.5 / phase1_duration; 
    }
}


else if (crash_timer >= phase1_duration && crash_timer < (phase1_duration + phase2_duration)) {
    
    white_alpha = 0.5; 
    
    
    if (!window_resized) {
        var scale_factor = 1.15;
        window_set_size(orig_w * scale_factor, orig_h * scale_factor);
        window_resized = true;
    }
    
       
    if (!popup_opened) {
        var file_name = "warning.txt";
        var file = file_text_open_write(file_name);
        
        if (file != -1) {
           
            file_text_write_string(file, "Something went wrong...");
            file_text_writeln(file);
            file_text_writeln(file); 
            
       
            repeat(200) {
                file_text_write_string(file, "forgive me");
                file_text_writeln(file); 
            }
            
            file_text_close(file);
        }
        
   
        url_open(file_name); 
        popup_opened = true;
    }

    

    sound_timer += 1;
    if (sound_timer % 3 == 0) {
        if (audio_exists(Menu)) {
            var snd = audio_play_sound(Menu, 10, false);
            audio_sound_pitch(snd, random_range(0.3, 1.7)); 
        }
    }
    

    var shake_intensity = 35; 
    var rx = irandom_range(-shake_intensity, shake_intensity);
    var ry = irandom_range(-shake_intensity, shake_intensity);
    
    window_set_position(orig_x + rx - (window_get_width() - orig_w)/2, 
                        orig_y + ry - (window_get_height() - orig_h)/2);

} 
else {
    audio_stop_all();
    window_set_size(orig_w, orig_h);
    window_set_position(orig_x, orig_y);
	file_delete("warning.txt")
    game_end();
}
