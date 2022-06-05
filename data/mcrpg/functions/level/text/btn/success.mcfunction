execute if score @s mcrpg_stat_points matches 1.. if score @s mcrpg_btn matches 2..5 run function mcrpg:level/btn_click/spend_sp
execute if score @s mcrpg_btn matches 6 run function mcrpg:level/click/disable_atr
execute if score @s mcrpg_btn matches 7 run function mcrpg:level/click/enable_atr