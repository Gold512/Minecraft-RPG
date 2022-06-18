scoreboard players set .len mcrpg 0 
data modify storage mcrpg temp set value []
scoreboard players operation .remaining mcrpg = .value mcrpg 

function mcrpg:text/item/coin_exchange/parse_int/loop