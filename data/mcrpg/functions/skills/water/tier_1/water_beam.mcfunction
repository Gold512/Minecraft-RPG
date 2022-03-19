tag @s add mcrpg_caster

scoreboard players operation .id mcrpg_killer_id = @s mcrpg_killer_id

execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/water/subfunc/water_beam/tick

scoreboard players set @s mcrpg_rcdist 0

tag @s remove mcrpg_caster

function mcrpg:damage/type/normal
function mcrpg:damage/mobs

playsound entity.blaze.shoot block @a ~ ~ ~ 1 1.4
scoreboard players remove @s mcrpg_mana 30
