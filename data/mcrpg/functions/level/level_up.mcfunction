scoreboard players remove @s mcrpg_xp 20

scoreboard players add @s mcrpg_level 1

scoreboard players add @s mcrpg_stat_points 3
scoreboard players add @s mcrpg_maxMana 20
scoreboard players add @s mcrpg_manaRegen 2

function mcrpg:level/text/level_up

execute if score @s mcrpg_xp matches 20.. run function mcrpg:level/level_up