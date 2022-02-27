# scope: 
#   entity self (@s): player that right clicked
#   positiion: position of player that right clicked anchored to feet

# note error will occur if a projectile is generated on the same tick and at the exact same x and z values
# summonned on the same tick 
# however, this is unlikely as even a 0.001 difference in x or z value will 
# allow the script to know which player summoned which projectile

# summon projectile at y=0 so it will only be seen when velocity is set
# format:  ... ^ ^ ^<speed> ...
execute positioned ~ 0 ~ run summon fireball ^ ^ ^.2 {ExplosionPower:3b, Tags:["mcrpg_proj_fireball"]}

# get projectile position
execute as @s store result score @s mcrpg_ax run data get entity @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] Pos[0] 100
execute as @s store result score @s mcrpg_ay run data get entity @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] Pos[1] 100
execute as @s store result score @s mcrpg_az run data get entity @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] Pos[2] 100

# teleport projectile 1 block infront of player eyes
execute anchored eyes run tp @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] ^ ^ ^1

# get player position
execute as @s store result score @s mcrpg_px run data get entity @s Pos[0] 100
execute as @s store result score @s mcrpg_py run data get entity @s Pos[1] 100
execute as @s store result score @s mcrpg_pz run data get entity @s Pos[2] 100

# calculate projectile distance relative to player
scoreboard players operation @s mcrpg_ax -= @s mcrpg_px
# scoreboard players operation @s mcrpg_ay -= @s mcrpg_py
scoreboard players operation @s mcrpg_az -= @s mcrpg_pz

# set projectile motion
execute as @s store result entity @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] power[0] double 0.01 run scoreboard players get @s mcrpg_ax
execute as @s store result entity @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] power[1] double 0.01 run scoreboard players get @s mcrpg_ay
execute as @s store result entity @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] power[2] double 0.01 run scoreboard players get @s mcrpg_az

# remove tag
tag @e[tag=mcrpg_proj_fireball,limit=1,sort=nearest] remove mcrpg_proj_fireball