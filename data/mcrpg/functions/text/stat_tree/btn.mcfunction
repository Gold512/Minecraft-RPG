# up
execute if score @s mcrpg_btn matches 10001 run scoreboard players remove @s mcrpg_menu_y 1
# down
execute if score @s mcrpg_btn matches 10002 run scoreboard players add @s mcrpg_menu_y 1

# left
execute if score @s mcrpg_btn matches 10003 run scoreboard players remove @s mcrpg_menu_x 1
# right 
execute if score @s mcrpg_btn matches 10004 run scoreboard players add @s mcrpg_menu_x 1


function mcrpg:text/stat_tree/main