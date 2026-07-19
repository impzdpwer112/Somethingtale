crash_timer += 1;

// ==========================================
// เฟส 1: ค่อยๆ เพิ่มความขาวแบบมี Opacity + เปลี่ยนชื่อหน้าต่าง
// ==========================================
if (crash_timer < phase1_duration) {
    window_set_caption("Somethingtale (Not Responding)");
    
    if (white_alpha < 0.5) {
        white_alpha += 0.5 / phase1_duration; 
    }
}

// ==========================================
// เฟส 2: ขยายหน้าต่าง + บังคับเปิด Notepad + ถล่มเสียง Menu + สั่นสะเทือน
// ==========================================
else if (crash_timer >= phase1_duration && crash_timer < (phase1_duration + phase2_duration)) {
    
    white_alpha = 0.5; // บังคับจอขาวสนิท
    
    // 1. ขยายหน้าต่างให้ใหญ่ขึ้น 1.15 เท่า
    if (!window_resized) {
        var scale_factor = 1.15;
        window_set_size(orig_w * scale_factor, orig_h * scale_factor);
        window_resized = true;
    }
    
        // 2. ลูกเล่นเขียนไฟล์ .txt วนลูปคำว่า forgive me 200 ครั้ง และเปิด Notepad (Overwrite เสมอ)
    if (!popup_opened) {
        var file_name = "warning.txt";
        var file = file_text_open_write(file_name);
        
        if (file != -1) {
            // เขียนหัวข้อเปิดเรื่องก่อน (เลือกใส่หรือไม่ใส่ก็ได้ครับ)
            file_text_write_string(file, "Something went wrong...");
            file_text_writeln(file);
            file_text_writeln(file); // เว้นบรรทัดว่างเพิ่มความหลอน
            
            // ใช้คำสั่ง repeat เพื่อวนลูปโค้ดด้านในคำสั่งนี้จำนวน 200 ครั้งอย่างรวดเร็ว
            repeat(200) {
                file_text_write_string(file, "forgive me");
                file_text_writeln(file); // ขึ้นบรรทัดใหม่ทุกครั้งที่เขียนเสร็จ
            }
            
            file_text_close(file);
        }
        
        // บังคับให้ Windows เปิดหน้าต่าง Notepad โชว์ไฟล์นี้ขึ้นมาทันที
        url_open(file_name); 
        popup_opened = true;
    }

    
    // 3. ถล่มเสียง Menu ซ้อนยับๆ
    sound_timer += 1;
    if (sound_timer % 3 == 0) {
        if (audio_exists(Menu)) {
            var snd = audio_play_sound(Menu, 10, false);
            audio_sound_pitch(snd, random_range(0.3, 1.7)); 
        }
    }
    
    // 4. สั่นหน้าต่างกระหน่ำรอบทิศทาง
    var shake_intensity = 35; 
    var rx = irandom_range(-shake_intensity, shake_intensity);
    var ry = irandom_range(-shake_intensity, shake_intensity);
    
    window_set_position(orig_x + rx - (window_get_width() - orig_w)/2, 
                        orig_y + ry - (window_get_height() - orig_h)/2);

} // ปีกกาปิดของ Else If (เฟส 2) ตรงนี้ห้ามหายเด็ดขาด!

// ==========================================
// เฟส 3: ปิดเกม (ตอนนี้ Else จะไม่อ่าน Error แล้ว)
// ==========================================
else {
    audio_stop_all();
    window_set_size(orig_w, orig_h);
    window_set_position(orig_x, orig_y);
	file_delete("warning.txt")
    game_end();
}
