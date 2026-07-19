
orig_x = window_get_x();
orig_y = window_get_y();
orig_w = window_get_width();
orig_h = window_get_height();

if (orig_x <= 0 && orig_y <= 0) {
    orig_x = display_get_width() / 2 - orig_w / 2;
    orig_y = display_get_height() / 2 - orig_h / 2;
}


audio_stop_all();


crash_timer = 0;
white_alpha = 0; 

phase1_duration = 30; 
phase2_duration = 120; 

window_resized = false;
popup_opened = false;
sound_timer = 0;
