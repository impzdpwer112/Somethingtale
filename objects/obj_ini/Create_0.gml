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
    dir = $"C:\\Users\\Dell\Desktop\\Somethingtale\\datafiles\\lang\\{global.lang}.lang" //!!!!!!!!!THIS IS MY OWN GAME PATH PLEASE CHANGE TO YOUR OWN!!!!!!!!!!!!!!
}
if os_type = os_macosx{
    dir = $"{program_directory}/lang/{global.lang}.lang"
    if string_char_at(program_directory, 8) = "S"{
        dir = $"/Users/Dell/Desktop/Somethingtale/datafiles/lang/{global.lang}.lang"
    }
}
global.langtxt = json_to_var(dir)
randomize()