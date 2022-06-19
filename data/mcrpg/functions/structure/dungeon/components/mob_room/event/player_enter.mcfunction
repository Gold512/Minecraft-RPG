# close off entrance 
summon marker ~ ~ ~ {Tags:["pos_marker"]}

data modify entity @e[type=marker,tag=pos_marker,limit=1] Pos set from entity @s Item.tag.entrance
execute at @e[type=marker,tag=pos_marker,limit=1] run fill ~ ~ ~ ~ ~1 ~ black_stained_glass

data modify entity @e[type=marker,tag=pos_marker,limit=1] Pos set from entity @s Item.tag.trigger
execute at @e[type=marker,tag=pos_marker,limit=1] run summon item_frame ~ ~ ~ {Tags:["mob_room_trigger"],Facing:1,Invulnerable:1b,Invisible:1b}

data modify entity @e[type=marker,tag=pos_marker,limit=1] Pos set from entity @s Item.tag.barrier
execute at @e[type=marker,tag=pos_marker,limit=1] run fill ~ ~ ~ ~ ~1 ~ barrier 

# this is an item frame 
tag @s add this 
execute as @e[type=item_frame,tag=mob_room_trigger,limit=1] run function mcrpg:structure/dungeon/components/mob_room/event/subfunc/set_data 
tag @s remove this 

# generate mobs

# count = lcg(3, 8) 
scoreboard players set .min mcrpg 3
scoreboard players set .max mcrpg 8 
function mcrpg:general/rng/range
scoreboard players operation .count mcrpg = .out mcrpg 

scoreboard players set .min mcrpg 1 
scoreboard players set .max mcrpg 2 
function mcrpg:general/rng/range

data modify entity @e[type=marker,tag=pos_marker,limit=1] Pos set from entity @s Item.tag.center

# run spawner at the center of the room 
execute if score .out mcrpg matches 1 at @e[type=marker,tag=pos_marker,limit=1] run function mcrpg:structure/dungeon/components/mob_room/summon/zombie 
execute if score .out mcrpg matches 2 at @e[type=marker,tag=pos_marker,limit=1] run function mcrpg:structure/dungeon/components/mob_room/summon/skeleton

kill @e[type=marker,tag=pos_marker,limit=1]
kill @s 