tag @s remove ungenerated

# check if it is going to overwrite a pre-existing object
execute store result score .count mcrpg run execute at @s if entity @e[type=marker,tag=gen_dungeon,distance=..1]

# auto-resolve the error 
execute if score .count mcrpg matches 2.. run function mcrpg:structure/dungeon/components/subfunc/gen_sharing_tile

# only generate if it is the only dungeon generator in that tile 
execute if score .count mcrpg matches 1 at @s run function mcrpg:structure/dungeon/components/subfunc/set_direction
