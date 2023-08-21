scoreboard players set .raycast mcrpg -1

# execute store success score .success mcrpg if data entity @s Gossips[{Type:"minor_positive"}]
# execute if score .success mcrpg matches 1 run function mcrpg:skills/dark/subfunc/charm/modify/increase
# execute if score .success mcrpg matches 0 run function mcrpg:skills/dark/subfunc/charm/modify/create

function mcrpg:skills/dark/subfunc/charm/modify/create
particle smoke ~ ~1 ~ .2 .2 .2 .05 32 