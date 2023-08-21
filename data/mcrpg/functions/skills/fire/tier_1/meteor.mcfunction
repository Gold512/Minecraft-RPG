playsound item.trident.return block @a ~ ~ ~ 1 .8 
# distance = .raycast/2
scoreboard players set .raycast mcrpg 100
tag @s add caster
execute anchored eyes run function mcrpg:skills/fire/subfunc/meteor/raycast
tag @s remove caster