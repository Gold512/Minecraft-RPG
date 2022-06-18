tag @s remove ungenerated

execute if entity @s[tag=pos_x] at @s facing ~1 ~ ~ run function mcrpg:structure/dungeon/components/subfunc/random
execute if entity @s[tag=neg_x] at @s facing ~-1 ~ ~ run function mcrpg:structure/dungeon/components/subfunc/random
execute if entity @s[tag=neg_y] at @s facing ~ ~ ~-1 run function mcrpg:structure/dungeon/components/subfunc/random
execute if entity @s[tag=pos_y] at @s facing ~ ~ ~1 run function mcrpg:structure/dungeon/components/subfunc/random