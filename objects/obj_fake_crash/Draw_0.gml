
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);


draw_set_alpha(white_alpha);
draw_set_color(c_white);


draw_rectangle(cam_x, cam_y, cam_x + cam_w, cam_y + cam_h, false);


draw_set_alpha(1);
