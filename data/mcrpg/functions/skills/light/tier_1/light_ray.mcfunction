tag @s add caster

scoreboard players operation .id mcrpg_killer_id = @s mcrpg_killer_id

execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/light/subfunc/light_ray/tick


scoreboard players set @s mcrpg_rcdist 0

function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs

tag @s remove caster

playsound block.end_portal_frame.fill block @a ~ ~ ~ 1 1.4

