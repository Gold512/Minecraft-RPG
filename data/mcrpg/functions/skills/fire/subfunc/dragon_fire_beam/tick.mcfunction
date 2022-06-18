summon snowball ~ ~ ~ {Tags:["target"],Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:101}},NoGravity:1b,Invulnerable:1b,Fire:-32700}
particle dust_color_transition 0.482 0.082 0.714 1 0.804 0.18 0.992 ^ ^ ^-.3 .15 .15 .15 3 4 normal @a[tag=!mcrpg_ldm]

execute as @e[dx=0,tag=!caster] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/fire/subfunc/dragon_fire_beam/hit

scoreboard players add @s mcrpg_rcdist 1

# block collision animation
execute unless block ~ ~ ~ #mcrpg:no_collision run function mcrpg:skills/fire/subfunc/dragon_fire_beam/collision

execute if entity @s[scores={mcrpg_rcdist=..144}] if block ~ ~ ~ #mcrpg:no_collision positioned ^ ^ ^.3 run function mcrpg:skills/fire/subfunc/dragon_fire_beam/tick
