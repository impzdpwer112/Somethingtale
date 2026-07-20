//select
if keyboard_check_pressed(global.select) or keyboard_check_pressed(vk_enter){
    global.selectbuttonpressed = true
} else{
    global.selectbuttonpressed = false
}

//cancel
if keyboard_check_pressed(global.cancel) or keyboard_check_pressed(vk_shift){
    global.cancelbuttonpressed = true
} else{
    global.cancelbuttonpressed = false
}

//menu
if keyboard_check_pressed(global.menuk){
    global.menukpressed = true
} else{
    global.menukpressed = false
}

//sprint
if keyboard_check(global.sprint) or keyboard_check(vk_shift){
    global.sprintbuttonpressed = true
} else{
    global.sprintbuttonpressed = false
}

//up
if keyboard_check_pressed(global.up) or keyboard_check_pressed(vk_up){
    global.upbuttonpressed1 = true
} else{
    global.upbuttonpressed1 = false
}

if keyboard_check(global.up) or keyboard_check(vk_up){
    global.upbuttonpressed = true
} else{
    global.upbuttonpressed = false
}

//down
if keyboard_check_pressed(global.down) or keyboard_check_pressed(vk_down){
    global.downbuttonpressed1 = true
} else{
    global.downbuttonpressed1 = false
}

if keyboard_check(global.down) or keyboard_check(vk_down){
    global.downbuttonpressed = true
} else{
    global.downbuttonpressed = false
}

//left
if keyboard_check_pressed(global.left) or keyboard_check_pressed(vk_left){
    global.leftbuttonpressed1 = true
} else{
    global.leftbuttonpressed1 = false
}

if keyboard_check(global.left) or keyboard_check(vk_left){
    global.leftbuttonpressed = true
} else{
    global.leftbuttonpressed = false
}

//right
if keyboard_check_pressed(global.right) or keyboard_check_pressed(vk_right){
    global.rightbuttonpressed1 = true
} else{
    global.rightbuttonpressed1 = false
}

if keyboard_check(global.right) or keyboard_check(vk_right){
    global.rightbuttonpressed = true
} else{
    global.rightbuttonpressed = false
}