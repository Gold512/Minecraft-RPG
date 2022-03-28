# get projectile position
execute store result score @s mcrpg_ax run data get entity @e[tag=mcrpg_projectile,limit=1,sort=nearest] Pos[0] 100
execute store result score @s mcrpg_ay run data get entity @e[tag=mcrpg_projectile,limit=1,sort=nearest] Pos[1] 100
execute store result score @s mcrpg_az run data get entity @e[tag=mcrpg_projectile,limit=1,sort=nearest] Pos[2] 100

# get player position
execute store result score @s mcrpg_px run data get entity @s Pos[0] 100
execute store result score @s mcrpg_py run data get entity @s Pos[1] 100
execute store result score @s mcrpg_pz run data get entity @s Pos[2] 100

# calculate projectile distance relative to player since projectile spawned at y=0 no subtraction for y needed
scoreboard players operation @s mcrpg_ax -= @s mcrpg_px
scoreboard players operation @s mcrpg_az -= @s mcrpg_pz

# calculate projectile speed 
scoreboard players operation @s mcrpg_ax *= @s mcrpg_pVel
scoreboard players operation @s mcrpg_ay *= @s mcrpg_pVel
scoreboard players operation @s mcrpg_az *= @s mcrpg_pVel

# set projectile motion
execute store result entity @e[tag=mcrpg_projectile,limit=1,sort=nearest] power[0] double 0.0001 run scoreboard players get @s mcrpg_ax
execute store result entity @e[tag=mcrpg_projectile,limit=1,sort=nearest] power[1] double 0.0001 run scoreboard players get @s mcrpg_ay
execute store result entity @e[tag=mcrpg_projectile,limit=1,sort=nearest] power[2] double 0.0001 run scoreboard players get @s mcrpg_az

# teleport projectile 1.5 blocks infront of player eyes
execute at @s anchored eyes run tp @e[tag=mcrpg_projectile,limit=1,sort=nearest] ^ ^ ^1.5

# remove tag
execute at @s anchored eyes positioned ^ ^ ^1.5 run tag @e[tag=mcrpg_projectile,limit=1,sort=nearest] remove mcrpg_projectile

tag @s add mcrpg_vis_fix