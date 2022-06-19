tag @s add projectile
scoreboard players operation .id mcrpg = @s mcrpg_sid

# limit=1 as there can only be one target 
execute as @e[sort=nearest,type=!#mcrpg:no_xp] unless score .id mcrpg = @s mcrpg_sid run tag @s add possible_target
tag @e[tag=possible_target,limit=1,sort=nearest] add target
tag @e[tag=possible_target] remove possible_target
execute anchored eyes facing entity @e[tag=target,limit=1] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.35 ~ ~

particle minecraft:dust_color_transition 0 0 1 3 0.27450980392 0.70588235294 0.94117647058 ~ ~ ~ 0 0 0 0 5 force
execute as @e[dx=0,tag=target,type=!#mcrpg:no_xp] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/water/subfunc/water_missile/hit
tag @e[tag=target,limit=1] remove target


execute unless block ^ ^ ^ #mcrpg:no_collision run function mcrpg:skills/water/subfunc/water_missile/proj_collision
scoreboard players add @s mcrpg_rcdist 1
execute if score @s mcrpg_rcdist matches 160.. run kill @s
tag @s remove projectile