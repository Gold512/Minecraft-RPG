tag @s add mcrpg_caster

execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/fire/subfunc/sf_beam

scoreboard players set @s mcrpg_rcdist 0

tag @s remove mcrpg_caster

# calculate damage types set by raycast function 
# do NOT calculate unused damage types
function mcrpg:damage/type/normal
function mcrpg:damage/type/magic
function mcrpg:damage/mobs

playsound entity.blaze.shoot block @a ~ ~ ~ 1 1.4
scoreboard players remove @s mcrpg_mana 25
