execute unless entity @s[tag=mcrpg_custom_hp] run scoreboard players set @s mcrpg_shield_hp 3
execute if entity @s[tag=mcrpg_custom_hp] run scoreboard players operation @s mcrpg_shield_hp = .shield_hp mcrpg
execute align xyz run tp @s ~.5 ~ ~.5 
setblock ~ ~ ~ brown_stained_glass
tag @s remove mcrpg_init