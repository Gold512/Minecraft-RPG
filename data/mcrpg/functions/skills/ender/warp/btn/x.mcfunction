execute if score @s mcrpg_btn matches 1001 run scoreboard players remove @s mcrpg_x 25
execute if score @s mcrpg_btn matches 1002 run scoreboard players remove @s mcrpg_x 10
execute if score @s mcrpg_btn matches 1003 run scoreboard players remove @s mcrpg_x 5
execute if score @s mcrpg_btn matches 1004 run scoreboard players remove @s mcrpg_x 1

execute if score @s mcrpg_btn matches 1005 run scoreboard players add @s mcrpg_x 1
execute if score @s mcrpg_btn matches 1006 run scoreboard players add @s mcrpg_x 5
execute if score @s mcrpg_btn matches 1007 run scoreboard players add @s mcrpg_x 10
execute if score @s mcrpg_btn matches 1008 run scoreboard players add @s mcrpg_x 25

execute if score @s mcrpg_btn matches 1009 run execute store result score @s mcrpg_x run data get entity @s Pos[0]