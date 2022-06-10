# here is the main menu of the item

scoreboard players set .has_mh_nbt mcrpg 0
scoreboard players set .has_oh_nbt mcrpg 0

execute if data entity @s SelectedItem.tag.mcrpg run scoreboard players set .has_mh_nbt mcrpg 1
execute unless score .has_mh_nbt mcrpg matches 1 if data entity @s Inventory[{Slot: -106b}].tag.mcrpg run scoreboard players set .has_oh_nbt mcrpg 1

execute if score .has_mh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg mcrpg set from entity @s SelectedItem.tag.mcrpg
execute if score .has_oh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg mcrpg set from entity @s Inventory[{Slot: -106b}].tag.mcrpg

scoreboard players set .failure mcrpg 0
execute unless score .has_mh_nbt mcrpg matches 1 unless score .has_oh_nbt mcrpg matches 1 run scoreboard players set .failure mcrpg 1 

execute if score .failure mcrpg matches 0 if score @s mcrpg_item matches 1 run function mcrpg:text/item/infer_action
execute if score .failure mcrpg matches 0 if score @s mcrpg_item matches 2.. run function mcrpg:text/item/set_action
execute if score .failure mcrpg matches 1 run tellraw @s {"text":"Item does not have any trigger actions", "color":"red"}

scoreboard players reset @s mcrpg_item
scoreboard players enable @s mcrpg_item