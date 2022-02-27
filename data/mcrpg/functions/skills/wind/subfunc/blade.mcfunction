particle sweep_attack ~ ~ ~ 0.2 0.2 0.2 0 1 force

scoreboard players operation .id mcrpg_killer_id = @s mcrpg_killer_id

execute as @e[dx=0,tag=!mcrpg_caster] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/wind/subfunc/blade_hit

scoreboard players remove @s mcrpg_rcdist 1

# block collision animation
execute unless block ~ ~ ~ #mcrpg:no_collision run particle cloud ~ ~ ~ 0 0 0 .3 128 normal @a[tag=!mcrpg_ldm]

execute if entity @s[scores={mcrpg_rcdist=1..}] if block ~ ~ ~ #mcrpg:no_collision unless entity @e[tag=!mcrpg_caster,distance=...5] positioned ^ ^ ^.3 run function mcrpg:skills/wind/subfunc/blade
 