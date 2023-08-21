scoreboard players remove .raycast mcrpg 1
execute positioned ~-.25 ~-.25 ~-.25 as @e[type=villager,dx=.5,dy=.5,dz=.5,limit=1] at @s run function mcrpg:skills/dark/subfunc/charm/execute
execute if score .raycast mcrpg matches 0 run tellraw @s {"text":"Invalid Target, not looking at a villager", "color":"red"}
execute if score .raycast mcrpg matches 1.. positioned ^ ^ ^.5 run function mcrpg:skills/dark/subfunc/charm/raycast