# get amount of items in skills array 
execute store result score .skill_count mcrpg run data get entity @s Item.tag.skills
execute store result score .max_skills mcrpg run data get entity @s Item.tag.mcrpg_atkCount

execute if score .skill_count mcrpg < .max_skills mcrpg run function mcrpg:craft/success/socket_skill
execute unless score .skill_count mcrpg < .max_skills mcrpg run function mcrpg:craft/attempt/subfunc/max_skill_exceed