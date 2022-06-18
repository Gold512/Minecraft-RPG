# parkour room will be a 1 x 2 x 2 (width, height, front/length)

# make a better version using d<axis> in the future 
# scoreboard players set .success mcrpg 0 
# execute if entity @s[] if entity @e[type=marker,tag=gen_dungeon,dx=0,dy=0,dz=0]

# foward down back 
execute store result score .success mcrpg run execute positioned ^ ^ ^5 unless entity @e[type=marker,tag=gen_dungeon,distance=...2] positioned ^ ^-5 ^ unless entity @e[type=marker,tag=gen_dungeon,distance=...2] positioned ^ ^ ^-5 unless entity @e[type=marker,tag=gen_dungeon,distance=...2] 

execute if score .success mcrpg matches 1 run function mcrpg:structure/dungeon/components/subfunc/parkour

# if it is obstructed, choose a different room 
# note: if there are more large rooms, make the reselection only choose from 1x1x1 rooms 
execute if score .success mcrpg matches 0 run function mcrpg:structure/dungeon/components/subfunc/random