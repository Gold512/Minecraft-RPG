scoreboard players set .triggered mcrpg 0

execute if score @s mcrpg_item matches 2 run function mcrpg:text/item/equip/main
execute if score @s mcrpg_item matches 3 run function mcrpg:text/item/coin_exchange/main
