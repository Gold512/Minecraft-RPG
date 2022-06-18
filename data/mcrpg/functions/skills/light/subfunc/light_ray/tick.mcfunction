# possible other particles: electric_spark, wax_off
particle end_rod ~ ~ ~ 0 0 0 0 1 force
# particle firework ^ ^ ^.25 0 0 0 0 1 force
# particle small_flame ~ ~ ~ 0 0 0 0.032 4 normal @a[tag=!mcrpg_ldm]

execute store result score .collision mcrpg run execute unless block ~ ~ ~ #mcrpg:no_collision

execute as @e[dx=0,tag=!caster,limit=1,sort=nearest] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/light/subfunc/light_ray/hit

scoreboard players add @s mcrpg_rcdist 1


# block collision animation
execute if score .collision mcrpg matches 1 run function mcrpg:skills/light/subfunc/light_ray/collision

execute if entity @s[scores={mcrpg_rcdist=..72}] if score .collision mcrpg matches 0 positioned ^ ^ ^.3 run function mcrpg:skills/light/subfunc/light_ray/tick
