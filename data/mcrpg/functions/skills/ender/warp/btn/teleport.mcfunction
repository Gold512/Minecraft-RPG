particle dust 0.761 0 0.631 0 0 ~ ~ ~ .2 .2 .3 128 force @a 

summon marker ~ ~ ~ {Tags:["destination"]}

# store player rotaton
tp @e[type=marker,limit=1,tag=destination] @s

execute store result entity @e[type=marker,limit=1,tag=destination] Pos[0] double 1 run scoreboard players get @s mcrpg_x
execute store result entity @e[type=marker,limit=1,tag=destination] Pos[1] double 1 run scoreboard players get @s mcrpg_y
execute store result entity @e[type=marker,limit=1,tag=destination] Pos[2] double 1 run scoreboard players get @s mcrpg_z

tp @s @e[type=marker,limit=1,tag=destination]
kill @e[type=marker,limit=1,tag=destination]

scoreboard players reset @s mcrpg_menu