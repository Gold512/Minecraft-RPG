# walls
fill ^2 ^-5 ^-2 ^-2 ^5 ^7 stone_bricks hollow 

# entrance 
fill ^-1 ^1 ^-2 ^1 ^3 ^-2 air 

# exit 
fill ^-1 ^1 ^7 ^1 ^3 ^7 air 

# lighting 
setblock ^-1 ^4 ^ lantern[hanging=true]
setblock ^-1 ^4 ^5 lantern[hanging=true]

setblock ^1 ^4 ^ lantern[hanging=true]
setblock ^1 ^4 ^5 lantern[hanging=true]

# a layer of stone bricks below the lava to prevent the lava particles from 
# being generated 
fill ^-1 ^-4 ^-1 ^1 ^-4 ^6 stone_bricks

# lava 
fill ^-1 ^-3 ^-1 ^1 ^-3 ^6 lava 

# merge if previous room is also a parkour room 
execute positioned ^ ^ ^-5 if entity @e[type=marker,tag=parkour_room,distance=..1] at @s run function mcrpg:structure/dungeon/components/subfunc/parkour_merge

# choose from a selection of parkour courses 
# for now just use 1 
scoreboard players set .min mcrpg 1 
scoreboard players set .max mcrpg 3

function mcrpg:general/rng/range

execute if score .out mcrpg matches 1 run function mcrpg:structure/dungeon/components/subfunc/parkour/course_1 
execute if score .out mcrpg matches 2 run function mcrpg:structure/dungeon/components/subfunc/parkour/course_2 
execute if score .out mcrpg matches 3 run function mcrpg:structure/dungeon/components/subfunc/parkour/course_3 

# markers 

# store that it is a parkour room for merging 
summon marker ^ ^ ^5 {Tags:["gen_dungeon", "parkour_room"]}
summon marker ^ ^-5 ^ {Tags:["gen_dungeon"]}
summon marker ^ ^-5 ^5 {Tags:["gen_dungeon"]}

# spawn generator for next room 
execute if entity @s[tag=pos_x] run summon marker ^ ^ ^10 {Tags:["gen_dungeon","pos_x","ungenerated"]}
execute if entity @s[tag=neg_x] run summon marker ^ ^ ^10 {Tags:["gen_dungeon","neg_x","ungenerated"]}
execute if entity @s[tag=neg_y] run summon marker ^ ^ ^10 {Tags:["gen_dungeon","neg_y","ungenerated"]}
execute if entity @s[tag=pos_y] run summon marker ^ ^ ^10 {Tags:["gen_dungeon","pos_y","ungenerated"]}