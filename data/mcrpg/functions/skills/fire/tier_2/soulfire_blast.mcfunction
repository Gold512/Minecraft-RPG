tag @s add caster

execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/fire/subfunc/soulfire_blast/tick

scoreboard players set @s mcrpg_rcdist 0

# calculate damage types set by raycast function 
# might add auto magic type calculation
function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/type/magic
function mcrpg:damage/mobs

tag @s remove caster

playsound entity.blaze.shoot block @a ~ ~ ~ 1 1.4

