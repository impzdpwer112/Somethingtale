// คืนค่าห้องเริ่มต้นหากค่าว่างเปล่า
if(global.start_room == pointer_null){
    global.start_room = Room1;
}

// ตรวจสอบเมื่อมีการกดปุ่ม "2" (เช็คครั้งเดียวที่ด้านนอกสุด)
if(keyboard_check_pressed(ord("2"))){
    
    // 1. ปุ่ม START GAME (เฉพาะเมื่อชี้ที่เมนูแรก)
    if(image_index == 0){
        ini_open("something.ini");
        room_goto(global.start_room); // เกมจะจำคำสั่งนี้เฉพาะเมื่อกดที่เมนู 0 เท่านั้น
        var instantiated = instance_create_layer(global.start_x, global.start_y, "Player", obj_plr);
        global.new_game = false;
        ini_close();
    }
    
    // 2. ปุ่ม CREDITS
    else if(image_index == 3){
        room_goto(Credits);
    }
    
    // 3. ปุ่ม QUIT (หลอนสไตล์ Undertale)
    else if(image_index == 4){
        // สร้างออบเจกต์หลอนขึ้นมาสั่นจอทันที 
        // พอเข้าเงื่อนไขนี้ โค้ดห้อง Room1 ด้านบนจะไม่ถูกรันแน่นอน!
        instance_create_depth(0, 0, -9999, obj_fake_crash);
    }
}



