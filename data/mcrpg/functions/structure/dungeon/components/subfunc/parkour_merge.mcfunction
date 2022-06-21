# merge two parkour rooms into one longer room 

fill ^-1 ^-2 ^-2 ^1 ^4 ^-3 air 
fill ^-1 ^-3 ^-2 ^1 ^-3 ^-3 lava

# place a random block where the divider would normally be to prevent impossible 
# parkour courses being generated 
scoreboard players set .min mcrpg 1 
scoreboard players set .max mcrpg 6

function mcrpg:general/rng/range

execute if score .out mcrpg matches 1..3 run function mcrpg:structure/dungeon/components/subfunc/parkour_merge/l1
execute if score .out mcrpg matches 4..6 run function mcrpg:structure/dungeon/components/subfunc/parkour_merge/l2