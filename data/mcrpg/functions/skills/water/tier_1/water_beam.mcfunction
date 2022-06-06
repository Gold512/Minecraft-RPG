tag @s add caster

scoreboard players operation .id mcrpg_killer_id = @s mcrpg_killer_id

scoreboard players set %range mcrpg 200
scoreboard players set %bounce mcrpg 2

execute positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function mcrpg:skills/water/subfunc/water_beam/start

function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs

tag @s remove caster

playsound entity.blaze.shoot block @a ~ ~ ~ 1 1.4

