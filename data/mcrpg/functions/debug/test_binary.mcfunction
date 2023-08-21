scoreboard players set .in mcrpg 13 
function mcrpg:general/binary/to
tellraw @s {"storage":"mcrpg","nbt":"out"}
scoreboard players set .pad mcrpg 1 
function mcrpg:general/binary/to
tellraw @s {"storage":"mcrpg","nbt":"out"}
data modify storage mcrpg in set from storage mcrpg out
function mcrpg:general/binary/from
tellraw @s {"score":{"name": ".out","objective": "mcrpg"}}