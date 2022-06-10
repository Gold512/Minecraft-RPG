execute store result score .bronze_coins mcrpg run clear @s command_block{mcrpg:{name:"bronze_coin"}} 0
execute store result score .silver_coins mcrpg run clear @s command_block{mcrpg:{name:"silver_coin"}} 0
execute store result score .gold_coins mcrpg run clear @s command_block{mcrpg:{name:"gold_coin"}} 0
execute store result score .platinum_coins mcrpg run clear @s command_block{mcrpg:{name:"platinum_coin"}} 0

scoreboard players set @s mcrpg_menu 1500

function mcrpg:text/item/coin_exchange/text