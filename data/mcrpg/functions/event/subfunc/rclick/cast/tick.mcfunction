execute if score @s mcrpg_skill_progress < @s mcrpg_skill_cd run scoreboard players add @s mcrpg_skill_progress 1
execute if entity @s[tag=mcrpg_auto_cast] if score @s mcrpg_skill_progress >= @s mcrpg_skill_cd run function mcrpg:event/subfunc/rclick/cast/complete
