tag @s add mcrpg_caster

scoreboard players operation .id mcrpg_killer_id = @s mcrpg_killer_id

execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/light/subfunc/light_ray/tick


scoreboard players set @s mcrpg_rcdist 0

tag @s remove mcrpg_caster

function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs

playsound block.end_portal_frame.fill block @a ~ ~ ~ 1 1.4
scoreboard players remove @s mcrpg_mana 10
