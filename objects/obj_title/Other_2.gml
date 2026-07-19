//game start vars
global.start_room = Room1
global.start_x = 178
global.start_y = 91
global.new_game = false
global.entered_new_room = false

//cntrl default
global.select = ord("2")
global.cancel = ord("x")
global.sprint = ord("vk_shift")
global.menuk = ord("C")
global.up = ord("W")
global.down = ord("S")
global.left = ord("A")
global.right = ord("D")


// room ids
global.r1 = 1
global.r2 = 2
//and so on...

if(file_exists("something.ini")){
	
	instance_create_depth(10,67,100, obj_buttons_continue) //six seven
	
	ini_open("something.ini")
	global.start_room = ini_read_string("Save1", "Room", Room1)
	global.start_x = ini_read_real("Save1", "x", 178)
	global.start_y = ini_read_real("Save1", "y", 91)
	ini_close()
}else{
	instance_create_depth(10,67,100, obj_buttons)
}

if (global.start_room = 0){
	
	global.start_room = Room1
	
}