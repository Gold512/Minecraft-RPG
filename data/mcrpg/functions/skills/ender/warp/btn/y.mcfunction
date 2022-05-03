execute if score @s mcrpg_btn matches 1011 run scoreboard players remove @s mcrpg_y 25
execute if score @s mcrpg_btn matches 1012 run scoreboard players remove @s mcrpg_y 10
execute if score @s mcrpg_btn matches 1013 run scoreboard players remove @s mcrpg_y 5
execute if score @s mcrpg_btn matches 1014 run scoreboard players remove @s mcrpg_y 1

execute if score @s mcrpg_btn matches 1015 run scoreboard players add @s mcrpg_y 1
execute if score @s mcrpg_btn matches 1016 run scoreboard players add @s mcrpg_y 5
execute if score @s mcrpg_btn matches 1017 run scoreboard players add @s mcrpg_y 10
execute if score @s mcrpg_btn matches 1018 run scoreboard players add @s mcrpg_y 25

execute if score @s mcrpg_btn matches 1019 run execute store result score @s mcrpg_y run data get entity @s Pos[1]
