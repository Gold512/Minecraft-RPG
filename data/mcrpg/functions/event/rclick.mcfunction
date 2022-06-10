scoreboard players reset @s mcrpg_coas_use

data modify storage minecraft:mcrpg attack set value ""

execute if data entity @s SelectedItem.tag.mcrpg run data modify storage minecraft:mcrpg skill set from entity @s SelectedItem.tag.mcrpg.selectedSkill
execute unless data entity @s SelectedItem.tag.mcrpg run data modify storage minecraft:mcrpg skill set from entity @s Inventory[{Slot: -106b}].tag.mcrpg.selectedSkill

execute if data storage minecraft:mcrpg skill run function mcrpg:event/subfunc/rclick/cast
execute unless data storage minecraft:mcrpg skill run function mcrpg:event/subfunc/rclick/rc_other