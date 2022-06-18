# Iterate over digits in number and add comma every 3rd digit 

scoreboard players operation .temp mcrpg = .remaining mcrpg

# round .temp
scoreboard players operation .remaining mcrpg /= #10 mcrpg_const 
scoreboard players operation .temp2 mcrpg = .remaining mcrpg
scoreboard players operation .temp2 mcrpg *= #10 mcrpg_const 

# trailing digit in .temp
# other digits in .remaining
scoreboard players operation .temp mcrpg -= .temp2 mcrpg

# prepend to array 
function mcrpg:text/item/coin_exchange/parse_int/to_string
scoreboard players add .len mcrpg 1 

scoreboard players operation .mod mcrpg = .len mcrpg 
scoreboard players operation .mod mcrpg %= #4 mcrpg_const 
execute if score .mod mcrpg matches 3 run function mcrpg:text/item/coin_exchange/parse_int/add_comma

execute if score .remaining mcrpg matches 1.. run function mcrpg:text/item/coin_exchange/parse_int/loop