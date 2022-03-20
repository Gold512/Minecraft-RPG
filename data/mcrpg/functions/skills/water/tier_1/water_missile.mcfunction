execute anchored eyes run summon marker ^ ^ ^1.6 {Tags:["missile", "summoned"]}
scoreboard players operation .id mcrpg = @s mcrpg_sid
execute as @e[sort=nearest,type=marker,tag=summoned,limit=1] run function mcrpg:skills/water/subfunc/water_missile/proj_setup
scoreboard players remove @s mcrpg_mana 80