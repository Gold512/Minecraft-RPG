### @s = aec
scoreboard players remove %bounce mcrpg 1

execute unless block ~0.5 ~ ~ #mcrpg:no_collision store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ #mcrpg:no_collision store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ #mcrpg:no_collision store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ #mcrpg:no_collision store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 #mcrpg:no_collision run function mcrpg:skills/water/subfunc/water_beam/zplane
execute unless block ~ ~ ~-0.5 #mcrpg:no_collision run function mcrpg:skills/water/subfunc/water_beam/zplane

execute rotated as @s run function mcrpg:skills/water/subfunc/water_beam/tick