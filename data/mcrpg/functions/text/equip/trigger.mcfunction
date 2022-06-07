scoreboard players reset @s mcrpg_equip
scoreboard players enable @s mcrpg_equip

# get currently selected skills 
scoreboard players set .has_mh_nbt mcrpg 0
scoreboard players set .has_oh_nbt mcrpg 0

execute if data entity @s SelectedItem.tag.mcrpg run scoreboard players set .has_mh_nbt mcrpg 1
execute unless score .has_mh_nbt mcrpg matches 1 if data entity @s Inventory[{Slot: -106b}].tag.mcrpg run scoreboard players set .has_oh_nbt mcrpg 1

execute if score .has_mh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg skills set from entity @s SelectedItem.tag.mcrpg.skills
execute if score .has_oh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg skills set from entity @s Inventory[{Slot: -106b}].tag.mcrpg.skills
execute unless score .has_oh_nbt mcrpg matches 1 unless score .has_mh_nbt mcrpg matches 1 run tellraw @s {"text":"Item does not have anything to edit", "color":"red"}
execute if score .has_mh_nbt mcrpg matches 1 run function mcrpg:text/equip/text
execute if score .has_oh_nbt mcrpg matches 1 run function mcrpg:text/equip/text
