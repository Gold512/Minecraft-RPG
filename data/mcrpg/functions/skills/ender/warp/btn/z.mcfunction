execute if score @s mcrpg_btn matches 1021 run scoreboard players remove @s mcrpg_z 25
execute if score @s mcrpg_btn matches 1022 run scoreboard players remove @s mcrpg_z 10
execute if score @s mcrpg_btn matches 1023 run scoreboard players remove @s mcrpg_z 5
execute if score @s mcrpg_btn matches 1024 run scoreboard players remove @s mcrpg_z 1

execute if score @s mcrpg_btn matches 1025 run scoreboard players add @s mcrpg_z 1
execute if score @s mcrpg_btn matches 1026 run scoreboard players add @s mcrpg_z 5
execute if score @s mcrpg_btn matches 1027 run scoreboard players add @s mcrpg_z 10
execute if score @s mcrpg_btn matches 1028 run scoreboard players add @s mcrpg_z 25

execute if score @s mcrpg_btn matches 1029 run execute store result score @s mcrpg_z run data get entity @s Pos[2]