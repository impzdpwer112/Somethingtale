// the thing that runs every frame, important for controls ig
//controls
var upK = keyboard_check(vk_up)
var downK = keyboard_check(vk_down)
var leftK = keyboard_check(vk_left)
var rightK = keyboard_check(vk_right)

//walk i think
if (keyboard_check(vk_shift)) {
	wspd = rspd
} else{
	wspd = walkspd
}

xspd = (rightK - leftK) * wspd
yspd = (downK - upK) * wspd

x += xspd
y += yspd

// collidiiosn???#FLm
if(place_meeting(x + xspd, y, obj_collision)){
	xspd = 0
}

if(place_meeting(x, y + yspd, obj_collision)){
	yspd = 0
}


// sprite usage here now

if(xspd>0){
	sprite_index = spr_friskRight
}else if(xspd<0){
	sprite_index = spr_friskLeft
}else if(yspd<0){
	sprite_index = spr_friskUp
}else if(yspd>0){
	sprite_index = spr_friskDown
}

if (xspd != 0 or yspd != 0){
	image_speed = 1
}else{
	image_speed = 0
	image_index= 0
}
