particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
particle soul ~ ~ ~ 0 0 0 0.032 4 normal @a[tag=!mcrpg_ldm]

execute as @e[dx=0,tag=!mcrpg_caster,type=!#mcrpg:no_xp] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/fire/subfunc/sf_dmg

scoreboard players add @s mcrpg_rcdist 1

# block collision animation
execute unless block ~ ~ ~ #mcrpg:no_collision run function mcrpg:skills/fire/subfunc/sf_beam_collision

execute if entity @s[scores={mcrpg_rcdist=..72}] if block ~ ~ ~ #mcrpg:no_collision positioned ^ ^ ^.3 run function mcrpg:skills/fire/subfunc/sf_beam
