tag @s add caster

scoreboard players operation .id mcrpg_killer_id = @s mcrpg_killer_id

execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/fire/subfunc/dragon_fire_beam/tick

scoreboard players set .life mcrpg 30
function mcrpg:general/set_life

scoreboard players set @s mcrpg_rcdist 0


function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs

tag @s remove caster

playsound entity.blaze.shoot block @a ~ ~ ~ 1 1.4

