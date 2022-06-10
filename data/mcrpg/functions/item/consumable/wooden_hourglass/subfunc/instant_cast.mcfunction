item replace entity @s weapon.mainhand with air 
scoreboard players operation @s mcrpg_skill_progress = @s mcrpg_skill_ct 

playsound entity.splash_potion.break block @a ~ ~ ~
execute anchored eyes run particle item glass ~ ~ ~ .1 .1 .1 .15 64 normal @a 