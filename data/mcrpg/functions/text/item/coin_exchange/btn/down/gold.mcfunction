execute store result score .bronze_coins mcrpg run clear @s command_block{mcrpg:{name:"gold_coin"}} 0
execute if score .bronze_coins mcrpg matches 100.. run function mcrpg:text/item/coin_exchange/btn/down/subfunc/gold