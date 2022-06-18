advancement revoke @s only mcrpg:consumable/wooden_hourglass

execute unless score @s mcrpg_skill_progress < @s mcrpg_skill_ct run tellraw @s {"text":"Nothing to speed up with item", "color":"red"}
execute if score @s mcrpg_skill_progress < @s mcrpg_skill_ct run function mcrpg:item/consumable/wooden_hourglass/subfunc/instant_cast 
