tag @s remove ungenerated
execute if entity @s[tag=pos_x] run tp @s ~ ~ ~ facing ~1 ~ ~ 
execute if entity @s[tag=neg_x] run tp @s ~ ~ ~ facing ~-1 ~ ~ 
execute if entity @s[tag=neg_y] run tp @s ~ ~ ~ facing ~ ~ ~-1 
execute if entity @s[tag=pos_y] run tp @s ~ ~ ~ facing ~ ~ ~1 
execute rotated as @s run function mcrpg:structure/dungeon/components/subfunc/random