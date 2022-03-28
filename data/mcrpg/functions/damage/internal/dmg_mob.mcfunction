execute store result score @s mcrpg run data get entity @s Health 1
scoreboard players operation @s mcrpg -= @s mcrpg_dmg
execute if score @s mcrpg matches ..0 run function mcrpg:damage/internal/kill_mob
execute unless score @s mcrpg matches ..0 run function mcrpg:damage/internal/return_hp
scoreboard players reset @s mcrpg_dmg