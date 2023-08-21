execute if score @s mcrpg_skill_progress < @s mcrpg_skill_ct run function mcrpg:event/subfunc/rclick/cast/charge
execute if score @s mcrpg_skill_progress = @s mcrpg_skill_ct run function mcrpg:event/subfunc/rclick/cast/delay
execute if entity @s[tag=mcrpg_auto_cast] if score @s mcrpg_skill_progress >= @s mcrpg_skill_ct run function mcrpg:event/subfunc/rclick/cast/complete
