execute if entity @s[tag=mcrpg_ldm] run tag @s add mcrpg_rmv_ldm
execute if entity @s[tag=!mcrpg_ldm] run tag @s add mcrpg_ldm
execute if entity @s[tag=mcrpg_rmv_ldm] run tag @s remove mcrpg_ldm
execute if entity @s[tag=mcrpg_rmv_ldm] run tag @s remove mcrpg_rmv_ldm
scoreboard players set @s mcrpg_ldm 0
scoreboard players enable @s mcrpg_ldm