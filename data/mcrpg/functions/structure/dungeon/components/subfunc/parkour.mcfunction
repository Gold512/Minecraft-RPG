# walls
fill ^2 ^-4 ^-2 ^-2 ^5 ^7 stone_bricks hollow 

# entrance 
fill ^-1 ^1 ^-2 ^1 ^3 ^-2 air 

# exit 
fill ^-1 ^1 ^7 ^1 ^3 ^7 air 

# lighting 
setblock ^-1 ^4 ^ lantern[hanging=true]
setblock ^-1 ^4 ^5 lantern[hanging=true]

setblock ^1 ^4 ^ lantern[hanging=true]
setblock ^1 ^4 ^5 lantern[hanging=true]

# lava 
fill ^-1 ^-3 ^-1 ^1 ^-3 ^6 lava 

# choose from a selection of parkour courses 
# for now just use 1 

function mcrpg:structure/dungeon/components/subfunc/parkour/course_1 

# markers 
summon marker ^ ^ ^5 {Tags:["gen_dungeon"]}
summon marker ^ ^-5 ^ {Tags:["gen_dungeon"]}
summon marker ^ ^-5 ^5 {Tags:["gen_dungeon"]}