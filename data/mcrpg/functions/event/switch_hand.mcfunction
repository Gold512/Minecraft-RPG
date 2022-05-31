# .hand = 1, item in mainhand 
# .hand = 2, item in offhand
execute if score .hand mcrpg matches 1 run function mcrpg:event/subfunc/switch_hand/mainhand 
execute if score .hand mcrpg matches 2 run function mcrpg:event/subfunc/switch_hand/offhand 