summon marker ~ ~ ~ {Tags:["missile", "summoned"]}
execute anchored eyes run tp @e[tag=summoned] ^ ^ ^1.6 facing ^ ^ ^2
scoreboard players operation .id mcrpg = @s mcrpg_sid
execute as @e[sort=nearest,type=marker,tag=summoned,limit=1] run function mcrpg:skills/water/subfunc/water_missile/proj_setup
