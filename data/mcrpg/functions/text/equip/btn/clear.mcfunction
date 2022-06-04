execute if data entity @s SelectedItem.tag.mcrpg run scoreboard players set .hand mcrpg 1
execute if data entity @s SelectedItem.tag.mcrpg run scoreboard players set .hand mcrpg 2

execute if score .hand mcrpg matches 1 run function mcrpg:text/equip/btn/clear/mainhand 
execute if score .hand mcrpg matches 2 run function mcrpg:text/equip/btn/clear/offhand
