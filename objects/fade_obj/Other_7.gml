room_goto(tar_r)
obj_plr.x = tar_x
obj_plr.y = tar_y

//facing check
if (facing == 0) {
	obj_plr.sprite_index = spr_friskRight;
}
else if (facing == 1) {
	obj_plr.sprite_index = spr_friskLeft;
}
else if (facing == 2) {
	obj_plr.sprite_index = spr_friskDown;
}
else if (facing == 3) {
	obj_plr.sprite_index = spr_friskUp;
}

//fade out
image_speed = -1