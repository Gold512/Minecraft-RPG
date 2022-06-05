execute store result score @s mcrpg_x run data get entity @s Pos[0]
execute store result score @s mcrpg_y run data get entity @s Pos[1]
execute store result score @s mcrpg_z run data get entity @s Pos[2]

scoreboard players set @s mcrpg_menu 1000

function mcrpg:skills/ender/warp/open_menu