scoreboard players operation .effect_id mcrpg = @s mcrpg_skill_effect 
execute at @s run function mcrpg:item/charge_effect/main

scoreboard players add @s mcrpg_skill_delay 1 
execute if score @s mcrpg_skill_delay matches 100.. run function mcrpg:event/subfunc/rclick/cast/cancel