scoreboard players operation @s mcrpg_skill_id = .skill_id mcrpg
scoreboard players operation @s mcrpg_skill_ct = .skill_cd mcrpg
scoreboard players operation @s mcrpg_skill_mana = .skill_mana mcrpg
scoreboard players set @s mcrpg_skill_progress 0

scoreboard players operation @s mcrpg_skill_mana_step = .skill_mana mcrpg
scoreboard players operation @s mcrpg_skill_mana_step /= .skill_cd mcrpg

# set to the remainding amount of mana to be deducted (rounding errors) 
scoreboard players operation @s mcrpg_skill_mana %= .skill_cd mcrpg

# set start pos 
execute store result score @s mcrpg_x_pos run data get entity @s Pos[0] 100
execute store result score @s mcrpg_y_pos run data get entity @s Pos[1] 100
execute store result score @s mcrpg_z_pos run data get entity @s Pos[2] 100

# attribute @s generic.movement_speed modifier add 6100e3fa-0100-45d1-88b8-382cce366520 "Speed" -.6 multiply