//game start vars
global.start_room = r1
global.start_x = 178
global.start_y = 91


global.new_game = false

if(file_exists("something.ini")){
	
	ini_open("something.ini")
	global.start_room = ini_read_real("Save1", "Room", r1)
	global.start_x = ini_read_real("Save1", "x", 178)
	global.start_y = ini_read_real("Save1", "y", 91)
	ini_close()
}