execute store result score .skill_id mcrpg run data get storage minecraft:mcrpg skill.id 
execute store result score .skill_cd mcrpg run data get storage minecraft:mcrpg skill.cd
execute store result score .skill_mana mcrpg run data get storage minecraft:mcrpg skill.mana

scoreboard players set .same mcrpg 0
execute if score @s mcrpg_skill_id = .skill_id mcrpg run scoreboard players set .same mcrpg 1

execute if score .same mcrpg matches 1 unless entity @s[tag=mcrpg_cast_cancel] run function mcrpg:event/subfunc/rclick/cast/cancel
execute if score .same mcrpg matches 0 unless score @s mcrpg_skill_id matches -2147483648..2147483647 if score @s mcrpg_mana >= .skill_mana mcrpg run function mcrpg:event/subfunc/rclick/cast/start 