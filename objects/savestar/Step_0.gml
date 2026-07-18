if place_meeting(x,y,obj_plr){
	
	ini_open("something.ini")
	ini_write_real("Save1", "Room", room)
	ini_write_real("Save1", "x", obj_plr.x)
	ini_write_real("Save1", "y", obj_plr.y)
	ini_write_real("Save1", "facing", obj_plr.facing_direction)
	ini_close()
}