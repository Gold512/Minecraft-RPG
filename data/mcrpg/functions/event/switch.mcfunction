#<@selector> mcrpg_shifting - shift state 

execute if predicate mcrpg:mainhand run scoreboard players set .hand mcrpg 1 
execute if predicate mcrpg:offhand run scoreboard players set .hand mcrpg 2

execute if score @s mcrpg_shifting matches 0 run function mcrpg:event/switch_skill

# tellraw @s ["-------------------"]
# tellraw @s [".hand", {"score":{"name":".hand","objective": "mcrpg"}}]
# tellraw @s ["MH: ", {"entity":"@s","nbt":"SelectedItem.tag.mcrpg.event.currentHand"}]
# tellraw @s ["OH: ", {"entity":"@s","nbt":"Inventory[{Slot: -106b}].tag.mcrpg.event.currentHand"}]

execute if score @s mcrpg_shifting matches 1 run function mcrpg:event/switch_hand