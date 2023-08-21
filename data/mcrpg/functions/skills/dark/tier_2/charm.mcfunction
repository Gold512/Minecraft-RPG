# Slightly increases the villager's opinion about the player

# 6 block range 
scoreboard players set .raycast mcrpg 12

tag @s add caster

# get the entity that the player is looking at 
function mcrpg:skills/dark/subfunc/charm/raycast

tag @s remove caster 