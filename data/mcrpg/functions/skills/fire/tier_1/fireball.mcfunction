execute positioned ~ 0 ~ run summon fireball ^ ^ ^.2 {ExplosionPower:1b, Tags:["mcrpg_projectile"]}
data modify entity @e[type=fireball,tag=mcrpg_projectile,limit=1] Owner set from entity @s UUID
scoreboard players set @s mcrpg_pVel 110
execute positioned ~ 0 ~ run function mcrpg:skills/sub_func/shoot_foward
playsound block.fire.extinguish block @a ~ ~ ~
