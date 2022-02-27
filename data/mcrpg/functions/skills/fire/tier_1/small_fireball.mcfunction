execute positioned ~ 0 ~ run summon small_fireball ^ ^ ^.2 {Tags:["mcrpg_projectile"]}
scoreboard players set @s mcrpg_pVel 125
execute positioned ~ 0 ~ run function mcrpg:skills/sub_func/shoot_foward
scoreboard players remove @s mcrpg_mana 10
playsound item.flintandsteel.use block @a ~ ~ ~