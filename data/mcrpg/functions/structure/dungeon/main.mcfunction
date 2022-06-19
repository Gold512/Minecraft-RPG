# this function should be executed at the 'origin' point of the dungeon 

scoreboard players set .max_depth mcrpg 50

# start room
summon item_frame ~ ~ ~ {Tags:["align"]}
execute as @e[type=item_frame,tag=align,sort=nearest,limit=1] at @s positioned ~ ~-.4 ~ run function mcrpg:structure/dungeon/components/origin
kill @e[type=item_frame,tag=align,sort=nearest,limit=1]

function mcrpg:structure/dungeon/subfunc/gen_loop
kill @e[tag=gen_dungeon]