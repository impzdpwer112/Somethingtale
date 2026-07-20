if place_meeting(x,y,obj_mainchara){
	
	ini_open("something.ini")
	ini_write_real("Save1", "Room", room_to_save)
	ini_write_real("Save1", "x", obj_mainchara.x)
	ini_write_real("Save1", "y", obj_mainchara.y)
	ini_write_string("Save1", "facing", obj_mainchara.facing_direction)
	ini_close()
}