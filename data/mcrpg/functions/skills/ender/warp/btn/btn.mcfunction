execute unless score @s mcrpg_menu matches 1000 run function mcrpg:general/no_btn_access

# execute this second since the teleport function removes the score 
execute if score @s mcrpg_menu matches 1000 run function mcrpg:skills/ender/warp/btn/success