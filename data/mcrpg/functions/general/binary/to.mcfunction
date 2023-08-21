# input
# <scoreboard> .in mcrpg - the input value
# output
# <storage> mcrpg out - the smallest value is on the left

data modify storage mcrpg out set value []
scoreboard players operation .value mcrpg = .in mcrpg
function mcrpg:general/binary/subfunc/to_binary_loop
execute if score .pad mcrpg matches 1 run function mcrpg:general/binary/subfunc/pad
scoreboard players reset .pad mcrpg 