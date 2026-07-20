// the thing that runs every frame, important for controls ig
//controls
var upK = keyboard_check(vk_up) and can_move
var downK = keyboard_check(vk_down) and can_move
var leftK  = keyboard_check(vk_left) and can_move
var rightK = keyboard_check(vk_right) and can_move

//walk i think
if (keyboard_check(vk_shift)) {
	wspd = rspd
} else{
	wspd = walkspd
}

xspd = (rightK - leftK) * wspd
yspd = (downK - upK) * wspd

//anim walks still if hit sum
if (keyboard_check(rightK or leftK or upK or downK)){
	image_speed = 1
} else {
	image_speed = 0
	image_index = 0
}
// collidiiosn???#FLm
if(place_meeting(x + xspd, y, obj_collision)){
	xspd = 0
}

if(place_meeting(x, y + yspd, obj_collision)){
	yspd = 0
}


x += xspd
y += yspd

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

//keep track of direction facing
if(sprite_index = spr_friskDown){
	facing_direction = "down"
}
if(sprite_index = spr_friskUp){
	facing_direction = "up"
}
if(sprite_index = spr_friskRight){
	facing_direction = "right"
}
if(sprite_index = spr_friskLeft){
	facing_direction = "left"
}

//tap code
var tap = (global.upbuttonpressed1 or global.downbuttonpressed1 or global.leftbuttonpressed1 or global.rightbuttonpressed1) and can_move = true

    if (tap){
        image_index = 1;
    	
    	if xspd = 0 and yspd = 0{
    		if global.upbuttonpressed1{
    			sprite_index = spr_friskUp
    		}
    		if global.downbuttonpressed1{
    			sprite_index = spr_friskDown
    		}
    	
    		if global.leftbuttonpressed1{
    			sprite_index = spr_friskLeft
    		}
    		if global.rightbuttonpressed1{
    			sprite_index = spr_friskRight
    		}
    	}
    	
    }

    //interact
    if global.selectbuttonpressed  and can_move = true{
    
    //down
    if facing_direction = "down"{
    	instance_create_depth(x, y+16, depth-1, obj_interactlaser_v)
    }
    
    //up
    if facing_direction = "up"{
    	instance_create_depth(x, y, depth-1, obj_interactlaser_v)
    }
    
    //right
    if facing_direction = "right"{
    	instance_create_depth(x+8, y+6, depth-1, obj_interactlaser_h)
    }
    
    //left
    if facing_direction = "left"{
    	instance_create_depth(x-8, y+6, depth-1, obj_interactlaser_h)
    }

}