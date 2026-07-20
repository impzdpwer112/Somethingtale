room_goto(tar_r)
obj_mainchara.x = tar_x
obj_mainchara.y = tar_y

//facing check
if (facing == 0) {
	obj_mainchara.sprite_index = spr_friskRight;
}
else if (facing == 1) {
	obj_mainchara.sprite_index = spr_friskLeft;
}
else if (facing == 2) {
	obj_mainchara.sprite_index = spr_friskDown;
}
else if (facing == 3) {
	obj_mainchara.sprite_index = spr_friskUp;
}

//fade out
image_speed = -1