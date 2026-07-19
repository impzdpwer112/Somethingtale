// ดึงพิกัดกล้องปัจจุบันมาวาดแผ่นสีขาวทับหน้าจอ
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

// ตั้งค่าความโปร่งแสงตามตัวแปร white_alpha
draw_set_alpha(white_alpha);
draw_set_color(c_white);

// วาดสี่เหลี่ยมสีขาวเต็มจอ
draw_rectangle(cam_x, cam_y, cam_x + cam_w, cam_y + cam_h, false);

// คืนค่า alpha กลับเป็น 1 เสมอเพื่อไม่ให้กระทบออบเจกต์อื่น
draw_set_alpha(1);
