scoreboard players operation .skill_id mcrpg = @s mcrpg_skill_id

function mcrpg:item/skill/main

scoreboard players reset @s mcrpg_skill_id
scoreboard players reset @s mcrpg_skill_progress
scoreboard players reset @s mcrpg_skill_ct
scoreboard players reset @s mcrpg_skill_mana
scoreboard players reset @s mcrpg_skill_delay
scoreboard players reset @s mcrpg_skill_effect

# attribute @s generic.movement_speed modifier remove 6100e3fa-0100-45d1-88b8-382cce366520