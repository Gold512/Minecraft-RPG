scoreboard players remove .raycast mcrpg 1 
execute store success score .success mcrpg if block ~ ~ ~ #mcrpg:no_collision
execute if score .success mcrpg matches 1 positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!#mcrpg:no_xp,tag=!caster,dx=1,dy=1,dz=1] run scoreboard players set .success mcrpg 0
execute if score .success mcrpg matches 0 run function mcrpg:skills/fire/subfunc/meteor/summon
execute if score .raycast mcrpg matches 0 run tellraw @s {"text":"Failed to cast meteor, no valid target block","color": "red"}
execute if score .raycast mcrpg matches 1.. positioned ^ ^ ^.5 if score .success mcrpg matches 1 run function mcrpg:skills/fire/subfunc/meteor/raycast