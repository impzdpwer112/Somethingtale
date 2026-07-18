if(global.start_room = pointer_null){
	global.start_room = Room1
}


//start save
ini_open("something.ini")

if(image_index = 0 and keyboard_check_pressed(ord("2"))){
	
	room_goto(global.start_room)
	
	var instantiated = instance_create_layer(global.start_x,global.start_y, "Player", obj_plr)
	global.new_game = false
}

ini_close()