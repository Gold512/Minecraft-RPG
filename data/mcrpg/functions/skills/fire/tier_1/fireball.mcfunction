execute positioned ~ 0 ~ run summon fireball ^ ^ ^.2 {ExplosionPower:1b, Tags:["mcrpg_projectile"]}
scoreboard players set @s mcrpg_pVel 110
execute positioned ~ 0 ~ run function mcrpg:skills/sub_func/shoot_foward
playsound block.fire.extinguish block @a ~ ~ ~
scoreboard players remove @s mcrpg_mana 60