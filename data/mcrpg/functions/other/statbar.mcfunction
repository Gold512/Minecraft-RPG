# execute if entity @s[scores={mcrpg_manaTimer=10..30}] run title @s actionbar [{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.mcrpg_atkName", "color":"gold"}, {"text": " || ", "color":"gray"},{"entity":"@s","nbt":"SelectedItem.tag.mcrpg_atkName", "color":"gold"},{"text":" | ","color": "gray"},{"score":{"name":"@s","objective":"mcrpg_mana"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"mcrpg_maxMana"},"color":"dark_aqua"},{"text": "\u2741", "color": "dark_aqua"}, {"text": " [","color": "gray"}, {"text":"+","color":"aqua"}, {"score":{"name":"@s","objective":"mcrpg_manaRegen"}, "color": "aqua"}, {"text": "]","color": "gray"}, {"text":" | ","color": "gray"}]
# execute if entity @s[scores={mcrpg_manaTimer=..9}] unless score @s mcrpg_mana = @s mcrpg_maxMana run title @s actionbar [{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.mcrpg_atkName", "color":"gold"}, {"text": " || ", "color":"gray"},{"entity":"@s","nbt":"SelectedItem.tag.mcrpg_atkName", "color":"gold"},{"text":" | ","color": "gray"},{"score":{"name":"@s","objective":"mcrpg_mana"},"color":"green"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"mcrpg_maxMana"},"color":"dark_aqua"},{"text": "\u2741", "color": "dark_aqua"},  {"text": " [","color": "gray"}, {"text":"+","color":"aqua"}, {"score":{"name":"@s","objective":"mcrpg_manaRegen"}, "color": "aqua"}, {"text": "]","color": "gray"},{"text":" | ","color": "gray"}]
# execute if entity @s[scores={mcrpg_manaTimer=..9},tag=!mcrpg_title_manamax] if score @s mcrpg_mana = @s mcrpg_maxMana run title @s actionbar [{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.mcrpg_atkName", "color":"gold"}, {"text": " || ", "color":"gray"},{"entity":"@s","nbt":"SelectedItem.tag.mcrpg_atkName", "color":"gold"},{"text":" | ","color": "gray"},{"score":{"name":"@s","objective":"mcrpg_mana"},"color":"yellow"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"mcrpg_maxMana"},"color":"dark_aqua"},{"text": "\u2741", "color": "dark_aqua"}, {"text": " [","color": "gray"}, {"text":"+","color":"aqua"}, {"score":{"name":"@s","objective":"mcrpg_manaRegen"}, "color": "aqua"}, {"text": "]","color": "gray"}, {"text":" | ","color": "gray"}]
# execute if entity @s[tag=mcrpg_title_manamax] run title @s actionbar [{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.mcrpg_atkName", "color":"gold"}, {"text": " || ", "color":"gray"},{"entity":"@s","nbt":"SelectedItem.tag.mcrpg_atkName", "color":"gold"},{"text":" | ","color": "gray"},{"score":{"name":"@s","objective":"mcrpg_mana"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"mcrpg_maxMana"},"color":"dark_aqua"},{"text": "\u2741", "color": "dark_aqua"}, {"text": " [","color": "gray"}, {"text":"+","color":"aqua"}, {"score":{"name":"@s","objective":"mcrpg_manaRegen"}, "color": "aqua"}, {"text": "]","color": "gray"}, {"text":" | ","color": "gray"}]

execute if score @s mcrpg_manaTimer matches 10.. unless score @s mcrpg_mana = @s mcrpg_maxMana run tag @s remove mcrpg_mana_max

scoreboard players set .has_mh_nbt mcrpg 0
scoreboard players set .has_oh_nbt mcrpg 0

execute if data entity @s SelectedItem.tag.mcrpg.selectedSkill run scoreboard players set .has_mh_nbt mcrpg 1
execute unless score .has_mh_nbt mcrpg matches 1 if data entity @s Inventory[{Slot: -106b}].tag.mcrpg.selectedSkill run scoreboard players set .has_oh_nbt mcrpg 1

execute if score .has_mh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg skill set from entity @s SelectedItem.tag.mcrpg.selectedSkill
execute if score .has_oh_nbt mcrpg matches 1 run data modify storage minecraft:mcrpg skill set from entity @s Inventory[{Slot: -106b}].tag.mcrpg.selectedSkill

execute unless score .has_mh_nbt mcrpg matches 1 unless score .has_oh_nbt mcrpg matches 1 run data remove storage minecraft:mcrpg skill

data remove storage minecraft:mcrpg skillText
execute if data storage minecraft:mcrpg skill.id run data modify storage minecraft:mcrpg skillText set value '""' 

execute if entity @s[tag=!mcrpg_mana_max] if score @s mcrpg_manaTimer matches ..9 run data modify storage minecraft:mcrpg color set value '{"text":"", "color": "green"}'
execute if entity @s[scores={mcrpg_manaTimer=..9},tag=!mcrpg_mana_max] if score @s mcrpg_mana = @s mcrpg_maxMana run data modify storage minecraft:mcrpg color set value '{"text":"", "color": "yellow"}'
execute if score @s mcrpg_manaTimer matches 10..30 run data modify storage minecraft:mcrpg color set value '{"text":"", "color": "dark_aqua"}'

execute if score @s mcrpg_manaTimer matches 10.. if score @s mcrpg_mana = @s mcrpg_maxMana run tag @s add mcrpg_mana_max

data modify storage minecraft:mcrpg attack_text set value '""'
execute if score @s mcrpg_skill_progress matches -2147483648..2147483647 run data modify storage minecraft:mcrpg attack_text set value '{"score":{"name":"@s", "objective": "mcrpg_skill_progress"}, "color":"green", "extra":["/"]}'

data modify storage minecraft:mcrpg skillDelay set value '""'
execute if score @s mcrpg_skill_delay matches 1.. run data modify storage minecraft:mcrpg skillDelay set value '[{"text":"+","color":"red"},{"score":{"name":"@s","objective":"mcrpg_skill_delay"}}]'

title @s actionbar ["", {"text":"","extra":["",{"nbt":"skill.displayName","storage":"mcrpg", "interpret": true}, " ", {"storage":"mcrpg","nbt":"skill.mana", "color":"dark_aqua", "extra":["\u2741"]}, " ",{"storage":"mcrpg","nbt":"attack_text","interpret": true}, {"storage":"mcrpg", "nbt":"skill.ct", "color":"green", "extra":["\u231B"]}, {"nbt":"skillDelay","storage":"mcrpg", "interpret": true}]}, {"text":" | ", "color": "gray"} , {"nbt":"color","storage":"mcrpg", "interpret": true, "extra":[{"score":{"name":"@s","objective": "mcrpg_mana"}}]}, {"text":"/","color":"dark_aqua"}, {"score":{"name":"@s","objective": "mcrpg_maxMana"},"color":"dark_aqua"}, {"text":"\u2741","color":"dark_aqua"}, {"text":" [", "color":"gray"}, {"text":"+","color":"aqua"}, {"score":{"name":"@s","objective": "mcrpg_manaRegen"}, "color":"aqua"}, {"text":"]", "color":"gray"}]