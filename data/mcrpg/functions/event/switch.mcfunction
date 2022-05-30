#<@selector> mcrpg_shifting - shift state 

execute if predicate mcrpg:mainhand run scoreboard players set .hand mcrpg 1 
execute if predicate mcrpg:offhand run scoreboard players set .hand mcrpg 2

execute if score @s mcrpg_shifting matches 0 run function mcrpg:event/switch_skill
execute if score @s mcrpg_shifting matches 1 run function mcrpg:event/switch_hand

function mcrpg:other/edit_item/switch_items