execute positioned 0. 0 0. run summon dragon_fireball ^ ^ ^.3 {Tags:["mcrpg_proj_fireball"]}
execute as @e[tag=mcrpg_proj_fireball] run data modify entity @s power set from entity @s Pos
execute positioned ~ ~1.5 ~ run tp @e[tag=mcrpg_proj_fireball] ^ ^ ^1
tag @e remove mcrpg_proj_fireball