scoreboard players operation @s mcrpg_ax *= #-1 mcrpg_const
scoreboard players operation @s mcrpg_ay *= #-1 mcrpg_const
scoreboard players operation @s mcrpg_az *= #-1 mcrpg_const

execute if score @s mcrpg_ax matches ..-1 run scoreboard players operation @s mcrpg_ax -= #50 mcrpg_const
execute if score @s mcrpg_ay matches ..-1 run scoreboard players operation @s mcrpg_ay -= #50 mcrpg_const
execute if score @s mcrpg_az matches ..-1 run scoreboard players operation @s mcrpg_az -= #50 mcrpg_const

execute if score @s mcrpg_ax matches 1.. run scoreboard players operation @s mcrpg_ax += #50 mcrpg_const
execute if score @s mcrpg_ay matches 1.. run scoreboard players operation @s mcrpg_ay += #50 mcrpg_const
execute if score @s mcrpg_az matches 1.. run scoreboard players operation @s mcrpg_az += #50 mcrpg_const