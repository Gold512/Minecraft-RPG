execute positioned ~ 0 ~ run summon small_fireball ^ ^ ^.2 {Tags:["mcrpg_projectile"]}
scoreboard players set @s mcrpg_pVel 125
data modify entity @e[type=small_fireball,tag=mcrpg_projectile,limit=1] Owner set from entity @s UUID
execute positioned ~ 0 ~ run function mcrpg:skills/sub_func/shoot_foward

playsound item.flintandsteel.use block @a ~ ~ ~