execute if score @s mcrpg_menu matches 1 run function mcrpg:level/text/btn/success
execute unless score @s mcrpg_menu matches 1 run function mcrpg:general/no_btn_access
function mcrpg:level/text/stat_menu