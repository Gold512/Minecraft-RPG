# mob room: 2x1x2 (width, height, length/front) 

# check if there is stufficent space if entity @e[type=marker,tag=gen_dungeon,distance=..1]

# right, foward, left
scoreboard players set .success mcrpg 0 
execute positioned ^-5 ^ ^ unless entity @e[type=marker,tag=gen_dungeon,distance=..1] positioned ^ ^ ^5 unless entity @e[type=marker,tag=gen_dungeon,distance=..1] positioned ^5 ^ ^ unless entity @e[type=marker,tag=gen_dungeon,distance=..1] run scoreboard players set .success mcrpg 1

execute if score .success mcrpg matches 1 run function mcrpg:structure/dungeon/components/mob_room/subfunc/medium
execute if score .success mcrpg matches 0 run function mcrpg:structure/dungeon/components/subfunc/random