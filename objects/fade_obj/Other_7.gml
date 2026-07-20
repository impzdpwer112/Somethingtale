room_goto(tar_r)
obj_mainchara.x = tar_x
obj_mainchara.y = tar_y

//facing check
if (facing == "right") {
	obj_mainchara.sprite_index = spr_friskRight;
}
else if (facing == "left") {
	obj_mainchara.sprite_index = spr_friskLeft;
}
else if (facing == "down") {
	obj_mainchara.sprite_index = spr_friskDown;
}
else if (facing == "up") {
	obj_mainchara.sprite_index = spr_friskUp;
}

//fade out
image_speed = -1