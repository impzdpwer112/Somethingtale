// 1. ดึงพิกัดปัจจุบันและขนาดเดิมของหน้าต่างเก็บไว้
orig_x = window_get_x();
orig_y = window_get_y();
orig_w = window_get_width();
orig_h = window_get_height();

if (orig_x <= 0 && orig_y <= 0) {
    orig_x = display_get_width() / 2 - orig_w / 2;
    orig_y = display_get_height() / 2 - orig_h / 2;
}

// 2. หยุดเสียงทั้งหมดในเกมทันที (สร้างความเงียบงันกดดันผู้เล่นก่อนเริ่มถล่มเสียง)
audio_stop_all();

// 3. ตั้งตัวนับเฟรมและระบบโปร่งแสง
crash_timer = 0;
white_alpha = 0; // เริ่มจากโปร่งใสสนิท

phase1_duration = 30;  // เฟสจอขาวโปร่งแสงสะสม + ขึ้นชื่อไร้การตอบสนอง
phase2_duration = 120; // เฟสสั่นจอ + ถล่มเสียง Menu + เปิดหน้าต่างใหม่

window_resized = false;
popup_opened = false; // เช็คว่าเปิดหน้าต่างใหม่ไปหรือยัง
sound_timer = 0;
