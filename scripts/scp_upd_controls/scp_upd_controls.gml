function scp_upd_controls(){
if file_exists("controls.ini"){
	ini_open("controls.ini")
	obj_title.select = ini_read_string("Save", "Select", "Z")
	obj_title.cancel = ini_read_string("Save", "Cancel", "X")
	obj_title.sprint = ini_read_string("Save", "Sprint", "vk_shift")
	obj_title.menuk = ini_read_string("Save", "Menu", "C")
	obj_title.up = ini_read_string("Save", "UP", "W")
	obj_title.down = ini_read_string("Save", "DOWN", "S")
	obj_title.left = ini_read_string("Save", "LEFT", "A")
	obj_title.right = ini_read_string("Save", "RIGHT", "D")
}

global.select = ord(obj_title.select)
global.cancel = ord(obj_title.cancel)
global.sprint = ord(obj_title.sprint)
global.menuk = ord(obj_title.menuk)
global.up = ord(obj_title.up)
global.down = ord(obj_title.down)
global.left = ord(obj_title.left)
global.right = ord(obj_title.right)


}