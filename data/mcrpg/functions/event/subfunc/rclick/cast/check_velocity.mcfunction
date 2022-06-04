execute store result score .x_pos mcrpg run data get entity @s Pos[0] 100
execute store result score .y_pos mcrpg run data get entity @s Pos[1] 100
execute store result score .z_pos mcrpg run data get entity @s Pos[2] 100

scoreboard players operation .x_vel mcrpg = .x_pos mcrpg 
scoreboard players operation .y_vel mcrpg = .y_pos mcrpg 
scoreboard players operation .z_vel mcrpg = .z_pos mcrpg 

scoreboard players operation .x_vel mcrpg -= @s mcrpg_x_pos 
scoreboard players operation .y_vel mcrpg -= @s mcrpg_y_pos 
scoreboard players operation .z_vel mcrpg -= @s mcrpg_z_pos 

# get net magnitude x^2 + y^2 + z^2 = v^2
scoreboard players operation .x_vel mcrpg *= .x_vel mcrpg
scoreboard players operation .y_vel mcrpg *= .y_vel mcrpg
scoreboard players operation .z_vel mcrpg *= .z_vel mcrpg

# tellraw @p ["X: ", {"score":{"name":".x_vel", "objective": "mcrpg"}}]
# tellraw @p ["Z: ", {"score":{"name":".z_vel", "objective": "mcrpg"}}]

scoreboard players operation .vel mcrpg = .x_vel mcrpg
scoreboard players operation .vel mcrpg += .y_vel mcrpg
scoreboard players operation .vel mcrpg += .z_vel mcrpg

scoreboard players operation @s mcrpg_x_pos = .x_pos mcrpg
scoreboard players operation @s mcrpg_y_pos = .y_pos mcrpg
scoreboard players operation @s mcrpg_z_pos = .z_pos mcrpg

# tellraw @p [{"score":{"name":"@s", "objective": "mcrpg_skill_progress"}}, " : ",{"score":{"name":".vel", "objective": "mcrpg"}}]

execute if score .vel mcrpg matches 60.. run function mcrpg:event/subfunc/rclick/cast/cancel