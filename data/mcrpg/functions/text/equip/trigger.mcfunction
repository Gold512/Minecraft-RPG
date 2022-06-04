scoreboard players reset @s mcrpg_equip
scoreboard players enable @s mcrpg_equip

# get currently selected skills 
scoreboard players set .has_mh_nbt mcrpg 0
scoreboard players set .has_oh_nbt mcrpg 0

execute if data entity @s SelectedItem.tag.mcrpg.selectedSkill run scoreboard players set .has_mh_nbt mcrpg 1
execute unless score .has_mh_nbt mcrpg matches 1 if data entity @s Inventory[{Slot: -106b}].tag.mcrpg.selectedSkill run scoreboard players set .has_oh_nbt mcrpg 1

execute if score .has_mh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg skills set from entity @s SelectedItem.tag.mcrpg.skills
execute if score .has_oh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg skills set from entity @s Inventory[{Slot: -106b}].tag.mcrpg.skills


# main menu 

tellraw @s {"text":"-----------------------","color":"light_purple"} 
tellraw @s [{"text":"", "clickEvent": {"action": "run_command", "value": "/trigger mcrpg_btn set 300"}, "extra":[{"text": "[", "color": "gray"}, {"text":"X", "color":"red"}, {"text": "]", "color": "gray"}]}, {"text":"", "extra":[""]}, {"storage": "mcrpg", "nbt": "skills[].displayName", "interpret": true, "separator": {"text": ", ", "color": "gray"}, "color": "gold"}]

scoreboard players set @s mcrpg_menu 300 