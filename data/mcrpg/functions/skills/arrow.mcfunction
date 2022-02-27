execute as @s positioned ~ 0 ~ run summon arrow ^ ^ ^1 {Tags:["mcrpg_proj_arrow", "mcrpg_skill_arrow"]}

playsound entity.splash_potion.throw master @s

execute as @s store result score @s mcrpg_px run data get entity @s Pos[0] 100
execute as @s store result score @s mcrpg_py run data get entity @s Pos[1] 100
execute as @s store result score @s mcrpg_pz run data get entity @s Pos[2] 100

execute as @s store result score @s mcrpg_ax run data get entity @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest] Pos[0] 100
execute as @s store result score @s mcrpg_ay run data get entity @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest] Pos[1] 100
execute as @s store result score @s mcrpg_az run data get entity @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest] Pos[2] 100

execute as @s run scoreboard players operation @s mcrpg_ax -= @s mcrpg_px
# execute as @s run scoreboard players operation @s mcrpg_ay -= @s mcrpg_py
execute as @s run scoreboard players operation @s mcrpg_az -= @s mcrpg_pz

# player positon anchors feet, compensate for summonning arrow 1.6 blocks above feet with scale 100
# execute as @s run scoreboard players remove @s mcrpg_ay 160

# scale projectile speed by 2x
execute as @s run scoreboard players operation @s mcrpg_ax += @s mcrpg_ax
execute as @s run scoreboard players operation @s mcrpg_ay += @s mcrpg_ay
execute as @s run scoreboard players operation @s mcrpg_az += @s mcrpg_az

execute as @s run scoreboard players operation @s mcrpg_ax += @s mcrpg_ax
execute as @s run scoreboard players operation @s mcrpg_ay += @s mcrpg_ay
execute as @s run scoreboard players operation @s mcrpg_az += @s mcrpg_az

execute as @s run scoreboard players operation @s mcrpg_ax += @s mcrpg_ax
execute as @s run scoreboard players operation @s mcrpg_ay += @s mcrpg_ay
execute as @s run scoreboard players operation @s mcrpg_az += @s mcrpg_az
# set projectile motion
execute as @s store result entity @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest,nbt=!{inGround:1b}] Motion[0] double 0.01 run scoreboard players get @s mcrpg_ax
execute as @s store result entity @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest,nbt=!{inGround:1b}] Motion[1] double 0.01 run scoreboard players get @s mcrpg_ay
execute as @s store result entity @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest,nbt=!{inGround:1b}] Motion[2] double 0.01 run scoreboard players get @s mcrpg_az

execute anchored eyes run tp @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest,nbt=!{inGround:1b}] ^ ^ ^1 facing ^ ^ ^2

tag @e[tag=mcrpg_proj_arrow,limit=1,sort=nearest] remove mcrpg_proj_arrow
