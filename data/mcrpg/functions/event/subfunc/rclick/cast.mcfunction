execute store success score .auto_cast mcrpg run execute if entity @s[tag=mcrpg_auto_cast]
execute store success score .cast_cancel mcrpg run execute if entity @s[tag=mcrpg_cast_cancel]

execute unless score @s mcrpg_skill_id matches -2147483648..2147483647 run function mcrpg:event/subfunc/rclick/cast/init
execute if score .auto_cast mcrpg matches 0 if score @s mcrpg_skill_progress >= @s mcrpg_skill_ct run function mcrpg:event/subfunc/rclick/cast/complete