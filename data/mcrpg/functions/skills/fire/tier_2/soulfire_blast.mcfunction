tag @s add mcrpg_caster

execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/fire/subfunc/soulfire_blast/tick

scoreboard players set @s mcrpg_rcdist 0

tag @s remove mcrpg_caster

# calculate damage types set by raycast function 
# might add auto magic type calculation
function mcrpg:damage/type/normal
function mcrpg:damage/type/magic
function mcrpg:damage/mobs

playsound entity.blaze.shoot block @a ~ ~ ~ 1 1.4
scoreboard players remove @s mcrpg_mana 250
