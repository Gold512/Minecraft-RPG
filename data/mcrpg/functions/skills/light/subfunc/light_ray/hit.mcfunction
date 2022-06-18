scoreboard players set @s mcrpg_normal_dmg 2
execute if entity @s[type=#mcrpg:undead] run scoreboard players add @s mcrpg_normal_dmg 6
scoreboard players operation @s mcrpg_killer_id = .id mcrpg_killer_id
scoreboard players set .collision mcrpg 1