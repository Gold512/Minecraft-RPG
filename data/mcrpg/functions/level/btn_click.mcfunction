execute if score @s mcrpg_stat_points matches 1.. if score @s mcrpg_stat_btn matches 1..10 run function mcrpg:level/btn_click/spend_sp
scoreboard players reset @s mcrpg_stat_btn
scoreboard players enable @s mcrpg_stat_btn
function mcrpg:level/text/stat_menu