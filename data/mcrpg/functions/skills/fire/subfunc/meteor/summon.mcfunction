summon fireball ~ ~30 ~ {ExplosionPower:7b, power: [0d, -0.1d, 0d],Item:{id:"cobblestone",Count:1},Tags:["summoned"]}
data modify entity @e[type=fireball,tag=summoned,limit=1] Owner set from entity @s UUID 
tag @e[type=fireball,tag=summoned,limit=1] remove summoned 
particle dust 1 0.6 0 1 ~ ~ ~ .3 .3 .3 .2 16