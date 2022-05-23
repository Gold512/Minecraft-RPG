# 1 for mainhand and 2 for offhand
scoreboard players set .hand mcrpg 2

execute if score @s mcrpg_shifting matches 1.. run function mcrpg:event/subfunc/switch_skill/main
execute unless score @s mcrpg_shifting matches 1.. run function mcrpg:event/subfunc/switch_hand/main