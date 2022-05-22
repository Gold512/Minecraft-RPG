item modify entity @e[type=armor_stand,tag=text_resolver] weapon.mainhand mcrpg:lore/skill
scoreboard players remove .count mcrpg 1
data remove storage mcrpg skills[0] 
execute if score .count mcrpg matches 1.. run function mcrpg:item/lore/subfunc/set_skills/main