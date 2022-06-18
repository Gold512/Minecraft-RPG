# create the room
# 2x1x2 

fill ^2 ^ ^-2 ^-7 ^5 ^7 stone_bricks outline
fill ^ ^1 ^-2 ^ ^2 ^-2 air 

# lighting 
setblock ^1 ^4 ^6 lantern[hanging=true]
#setblock ^1 ^2 ^6 candle[lit=true]

setblock ^-1 ^4 ^-1 lantern[hanging=true]
#setblock ^-1 ^2 ^-1 candle[lit=true]

setblock ^-6 ^4 ^-1 lantern[hanging=true]
#setblock ^-6 ^2 ^-1 candle[lit=true]

setblock ^-6 ^4 ^-6 lantern[hanging=true]
#setblock ^-6 ^2 ^-6 candle[lit=true]

fill ^-2 ^1 ^2 ^-3 ^1 ^3 light

# summon marker to prevent overwriting 
summon marker ^ ^ ^5 {Tags:["gen_dungeon"]}
summon marker ^-5 ^ ^ {Tags:["gen_dungeon"]}
summon marker ^-5 ^ ^5 {Tags:["gen_dungeon"]}

# enter room trigger 
summon item_frame ^ ^1 ^-1 {Tags:["room_enter_trigger"],Facing:1,Invulnerable:1b,Invisible:1b}

data modify storage mcrpg temp set value {}

summon marker ^ ^1 ^-2 {Tags:["coord"]}
data modify storage mcrpg temp.entrance set from entity @e[type=marker,tag=coord,limit=1] Pos

execute if entity @s[tag=pos_x] run tp @e[type=marker,tag=coord] ^1 ^1 ^-1
execute if entity @s[tag=neg_x] run tp @e[type=marker,tag=coord] ^-6 ^1 ^6
execute if entity @s[tag=pos_y] run tp @e[type=marker,tag=coord] ^-6 ^1 ^-1
execute if entity @s[tag=neg_y] run tp @e[type=marker,tag=coord] ^1 ^1 ^6
data modify storage mcrpg temp.trigger set from entity @e[type=marker,tag=coord,limit=1] Pos

tp @e[type=marker,tag=coord] ^-2.5 ^1 ^2.5
data modify storage mcrpg temp.center set from entity @e[type=marker,tag=coord,limit=1] Pos

tag @s add this 
execute as @e[type=item_frame,tag=room_enter_trigger,sort=nearest,limit=1] run function mcrpg:structure/dungeon/components/mob_room/subfunc/set_data
tag @s remove this 

data remove storage mcrpg temp 