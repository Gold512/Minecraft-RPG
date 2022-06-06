scoreboard players set @s mcrpg_rcdist 20

tag @s add caster
execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/air/subfunc/blade

function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs
tag @s remove caster

playsound entity.player.attack.sweep block @a ~ ~ ~
