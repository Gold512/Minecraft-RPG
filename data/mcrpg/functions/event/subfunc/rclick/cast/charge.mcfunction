scoreboard players add @s mcrpg_skill_progress 1
execute if score @s mcrpg_skill_progress = @s mcrpg_skill_ct run scoreboard players operation @s mcrpg_mana -= @s mcrpg_skill_mana
scoreboard players operation @s mcrpg_mana -= @s mcrpg_skill_mana_step

scoreboard players operation .effect_id mcrpg = @s mcrpg_skill_effect 
execute at @s run function mcrpg:item/charge_effect/main

# cast interuption due to knockback
#scoreboard players operation .interval mcrpg = @s mcrpg_skill_progress
#scoreboard players operation .interval mcrpg %= #2 mcrpg_const

#execute if score .interval mcrpg matches 0 run 
function mcrpg:event/subfunc/rclick/cast/check_velocity