tag @s add projectile
scoreboard players operation .id mcrpg = @s mcrpg_sid

# limit=1 as there can only be one caster
execute as @e[sort=nearest,type=!#mcrpg:no_xp] unless score .id mcrpg = @s mcrpg_sid run tag @s add possible_target
tag @e[tag=possible_target,limit=1,sort=nearest] add target
tag @e[tag=possible_target] remove possible_target

execute anchored eyes facing entity @e[tag=target,limit=1] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
tag @e[tag=target,limit=1] remove target

particle minecraft:dust_color_transition 0 0 1 3 0 0.51764 1 ~ ~ ~ 0 0 0 0 5 force

execute as @e[type=!#mcrpg:no_xp,distance=..1] run function mcrpg:skills/water/subfunc/homing_water/hit
execute unless block ^ ^ ^ #mcrpg:no_collision run kill @s

tag @s remove projectile