execute as @e[distance=.4..3] at @s run function mcrpg:skills/earth/sub_func/launch
particle explosion ~ ~ ~ 2 0 2 0 32 force 
particle explosion ~ ~ ~ 2 0 2 0 128 normal @a[tag=!mcrpg_ldm] 

scoreboard players remove @s mcrpg_mana 50