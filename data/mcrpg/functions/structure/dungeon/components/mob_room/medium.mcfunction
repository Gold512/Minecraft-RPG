# mob room: 2x1x2 (width, height, length/front) 

# check if there is stufficent space if entity @e[type=marker,tag=gen_dungeon,distance=...2]

# right, foward, left
execute store result score .success mcrpg run execute positioned ^-5 ^ ^ unless entity @e[type=marker,tag=gen_dungeon,distance=...2] positioned ^ ^ ^5 unless entity @e[type=marker,tag=gen_dungeon,distance=...2] positioned ^5 ^ ^ unless entity @e[type=marker,tag=gen_dungeon,distance=...2]

execute if score .success mcrpg matches 1 run function mcrpg:structure/dungeon/components/mob_room/subfunc/medium
execute if score .success mcrpg matches 0 run function mcrpg:structure/dungeon/components/subfunc/random