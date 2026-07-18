if place_meeting(x, y, obj_plr) and !instance_exists(fade_obj){
	var instantilated = instance_create_depth(0, 0, -9999, fade_obj)
	instantilated.tar_x = tar_x
	instantilated.tar_y = tar_y
	instantilated.tar_r =tar_r
	instantilated.facing = facing
}