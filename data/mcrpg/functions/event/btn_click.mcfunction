execute if score @s mcrpg_btn matches 2..10 run function mcrpg:level/btn_click
execute if score @s mcrpg_btn matches 11..100 run function mcrpg:text/settings/btn

# gate teleport menu 
execute if score @s mcrpg_btn matches 1000..1099 run function mcrpg:skills/ender/warp/btn/btn

# skill tree
execute if score @s mcrpg_btn matches 10000..10999 run function mcrpg:text/stat_tree/btn

execute if score @s mcrpg_btn matches 300..399 run function mcrpg:text/item/equip/btn
execute if score @s mcrpg_btn matches 1500..1599 run function mcrpg:text/item/coin_exchange/btn/btn
scoreboard players reset @s mcrpg_btn
scoreboard players enable @s mcrpg_btn