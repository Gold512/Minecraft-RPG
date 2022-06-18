fill ^2 ^5 ^-2 ^-2 ^ ^2 stone_bricks outline 
setblock ~ ~4 ~ lantern[hanging=true]
# back 
fill ^-1 ^1 ^-2 ^1 ^3 ^-2 air

# check if occupied 
execute if score .right mcrpg matches 1 positioned ^-5 ^ ^ if entity @e[type=marker,tag=gen_dungeon,distance=...2] run scoreboard players set .right mcrpg 0
execute if score .left mcrpg matches 1 positioned ^5 ^ ^ if entity @e[type=marker,tag=gen_dungeon,distance=...2] run scoreboard players set .left mcrpg 0
execute if score .front mcrpg matches 1 positioned ^ ^ ^5 if entity @e[type=marker,tag=gen_dungeon,distance=...2] run scoreboard players set .front mcrpg 0

# front 
execute if score .front mcrpg matches 1 run function mcrpg:structure/dungeon/components/hallway/subfunc/front
execute if score .left mcrpg matches 1 run function mcrpg:structure/dungeon/components/hallway/subfunc/left
execute if score .right mcrpg matches 1 run function mcrpg:structure/dungeon/components/hallway/subfunc/right