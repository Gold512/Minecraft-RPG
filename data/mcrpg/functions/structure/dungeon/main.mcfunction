# this function should be executed at the 'origin' point of the dungeon 

scoreboard players set .max_depth mcrpg 50

# start room
summon item_frame ~ ~ ~ {Tags:["align"]}
summon marker ~ ~ ~ {Tags:["gen_dungeon"]}
execute as @e[type=item_frame,tag=align,sort=nearest,limit=1] at @s positioned ~ ~-.4 ~ run function mcrpg:structure/dungeon/components/origin
kill @e[type=item_frame,tag=align,sort=nearest,limit=1]

function mcrpg:structure/dungeon/subfunc/gen_loop
execute store result score .count mcrpg if entity @e[type=marker,tag=gen_dungeon]
kill @e[tag=gen_dungeon]

tellraw @s ["", {"text": "[","color":"gray"},{"text":"INFO","color":"aqua"},{"text": "] ","color":"gray"},{"text":"","color":"aqua","extra":[{"text":"Generated dungeon with "},{"score":{"name": ".count","objective": "mcrpg"}}, {"text":" tiles (5x5x5 units)"}]}]