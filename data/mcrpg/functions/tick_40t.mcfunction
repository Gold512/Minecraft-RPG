# shield block 
execute as @e[type=armor_stand,tag=mcrpg_model_shield] at @s run function mcrpg:block/shield/break

# enable public triggers for all players 
scoreboard players enable @a mcrpg_stat_menu
scoreboard players enable @a mcrpg_settings_menu
scoreboard players enable @a mcrpg_ldm
scoreboard players enable @a mcrpg_btn

execute as @a unless score @s mcrpg_killer_id = @s mcrpg_killer_id run function mcrpg:other/killer_id/assign_id

schedule function mcrpg:tick_40t 40t replace

