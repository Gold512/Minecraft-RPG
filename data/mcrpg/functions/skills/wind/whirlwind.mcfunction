particle cloud ~ ~.2 ~ 0 0 0 .32 16 force
particle sweep_attack ~ ~.2 ~ 2 2 2 .1 8 force

particle cloud ~ ~.2 ~ 1 1 1 .5 32 normal @a[tag=!mcrpg_ldm]
particle sweep_attack ~ ~.2 ~ 2 2 2 .05 16 normal @a[tag=!mcrpg_ldm]

scoreboard players operation .id mcrpg_killer_id = @s mcrpg_killer_id

scoreboard players set @e[distance=.2..2] mcrpg_normal_dmg 2
execute as @e[distance=.2..2] run function mcrpg:skills/wind/subfunc/whirlwind_hit

function mcrpg:damage/type/normal

function mcrpg:damage/mobs

execute unless score @s mcrpg_sid = @s mcrpg_sid run function mcrpg:skills/wind/subfunc/add_id

tag @s add caster
execute anchored eyes as @e[type=#impact_projectiles,distance=.2..4] unless score @s mcrpg_sid = @s mcrpg_sid anchored feet run function mcrpg:skills/wind/subfunc/push_away
tag @s remove caster

scoreboard players remove @s mcrpg_mana 75