particle minecraft:dust_color_transition 0 0 1 3 0.27450980392 0.70588235294 0.94117647058 ~ ~ ~ 0 0 0 0 1 force
particle minecraft:dust_color_transition 0 0 1 2 0.27450980392 0.70588235294 0.94117647058 ~ ~ ~ 0 0 0 0.032 1 normal @a[tag=!mcrpg_ldm]

execute as @e[dx=0,tag=!mcrpg_caster,type=!#mcrpg:no_xp] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/water/subfunc/water_beam/hit

# do not bounce on fluids 
execute if score %bounce mcrpg matches 1.. unless block ^ ^ ^0.25 #mcrpg:fluids run function mcrpg:skills/water/subfunc/water_beam/absorb

scoreboard players remove %range mcrpg 1
execute if score %bounce mcrpg matches 1.. unless block ^ ^ ^0.25 #mcrpg:no_collision run function mcrpg:skills/water/subfunc/water_beam/bounce

# out of bounces, just run a collision effect 
execute unless score %bounce mcrpg matches 1.. unless block ^ ^ ^0.25 #mcrpg:no_collision run function mcrpg:skills/water/subfunc/water_beam/collision

execute if score %range mcrpg matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #mcrpg:no_collision run function mcrpg:skills/water/subfunc/water_beam/tick