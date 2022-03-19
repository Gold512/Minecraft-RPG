particle minecraft:dust_color_transition 0 0 1 3 0 0.51764 2 ~ ~ ~ 0 0 0 0 1 force
particle minecraft:dust_color_transition 0 0 1 3 0 0.51764 1 ~ ~ ~ 0 0 0 0.032 4 normal @a[tag=!mcrpg_ldm]

execute as @e[dx=0,tag=!mcrpg_caster,type=!#mcrpg:no_xp] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/water/subfunc/water_beam/hit

scoreboard players add @s mcrpg_rcdist 1

# block collision animation
execute unless block ~ ~ ~ #mcrpg:no_collision run function mcrpg:skills/fire/subfunc/soulfire_blast/collision

execute if entity @s[scores={mcrpg_rcdist=..72}] if block ~ ~ ~ #mcrpg:no_collision positioned ^ ^ ^.3 run function mcrpg:skills/water/subfunc/water_beam/tick
