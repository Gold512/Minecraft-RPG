scoreboard players set .min mcrpg 1 
scoreboard players set .max mcrpg 80

function mcrpg:general/rng/range

execute if score .out mcrpg matches 1..10 run function mcrpg:structure/dungeon/components/hallway/staight
execute if score .out mcrpg matches 11..20 run function mcrpg:structure/dungeon/components/hallway/right
execute if score .out mcrpg matches 21..30 run function mcrpg:structure/dungeon/components/hallway/left
#execute if score .out mcrpg matches 4 run function mcrpg:structure/dungeon/components/hallway/left_l
#execute if score .out mcrpg matches 5 run function mcrpg:structure/dungeon/components/hallway/right_l
execute if score .out mcrpg matches 31..40 run function mcrpg:structure/dungeon/components/hallway/t_shape
execute if score .out mcrpg matches 41..50 run function mcrpg:structure/dungeon/components/hallway/four_way
execute if score .out mcrpg matches 51..60 run function mcrpg:structure/dungeon/components/hallway/end
execute if score .out mcrpg matches 61..65 run function mcrpg:structure/dungeon/components/chest_room
execute if score .out mcrpg matches 66..70 run function mcrpg:structure/dungeon/components/stairwell
execute if score .out mcrpg matches 71..80 run function mcrpg:structure/dungeon/components/mob_room/medium
execute if score .out mcrpg matches 80..90 run function mcrpg:structure/dungeon/components/parkour