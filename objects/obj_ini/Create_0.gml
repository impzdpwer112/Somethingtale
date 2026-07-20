//lang
global.lang = "en"
global.fontdefault = fnt_main
global.fontsans = fnt_mainsans
global.fontpapyrus = fnt_pap
global.font_comic_sans = fnt_com_sans
if global.lang = "jp"{
    global.font_comic_sans = fnt_comic_jp
}
dir = $"{program_directory}lang\\{global.lang}.lang" //check ignore sandbox so it works
if string_char_at(program_directory, 4) = "P"{ //if is in gamemaker test environment (not exported)
    dir = $"C:\\Users\\Dell\\Desktop\\Somethingtale\\Somethingtale\\datafiles\\lang\\{global.lang}.lang" //!!!!!!!!!THIS IS MY OWN GAME PATH PLEASE CHANGE TO YOUR OWN!!!!!!!!!!!!!!
}
global.langtxt = json_to_var(dir)
randomize()

//control defaults
global.select = ord("Z")
global.cancel = ord("X")
global.sprint = ord("X")
global.menuk = ord("C")
global.up = ord("W")
global.down = ord("S")
global.left = ord("A")
global.right = ord("D")

//control defaults
select = "Z"
cancel = "X"
sprint = "X"
menuk = "C"
upK = "W"
downK = "S"
leftK = "A"
rightK = "D"

room_goto(Room1)