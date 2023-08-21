# convert from binary to scoreboard 
scoreboard players set .counter mcrpg 1
scoreboard players set .out mcrpg 0
data modify storage mcrpg binary set from storage mcrpg in
function mcrpg:general/binary/subfunc/from_binary_loop