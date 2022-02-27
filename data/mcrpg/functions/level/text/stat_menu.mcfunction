execute store result score .total_maxhp mcrpg run attribute @s generic.max_health get 

execute store result score .total_strength mcrpg run attribute @s generic.attack_damage get 100

scoreboard players operation .total_str_int mcrpg = .total_strength mcrpg
scoreboard players operation .total_str_float mcrpg = .total_strength mcrpg

scoreboard players operation .total_str_int mcrpg /= #100 mcrpg_const
scoreboard players operation .total_str_float mcrpg %= #100 mcrpg_const

# execute store result score .total_strength mcrpg run attribute @s generic.attack_damage modifier value get d63797b4-14c6-4f33-86d0-fdee7d3165ed 100
# scoreboard players operation .total_strength mcrpg *= .base_str mcrpg
# scoreboard players operation .total_strength mcrpg /= #100 mcrpg_const

tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n---------------------","color":"light_purple"},{"text":"\n"},{"selector":"@s","color":"blue"},{"text":"  Lv","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"mcrpg_level"},"color":"gold"},{"text":"\n"},{"text":"XP","color":"yellow"},{"text":": "},{"score":{"name":"@s","objective":"mcrpg_xp"},"color":"gold"},{"text":"/","color":"white"},{"text":"20","color":"yellow"},{"text":"\n"},{"text":"---------------------","color":"gray"},{"text":"\n\n"},{"text":"Stat Points","color":"light_purple"},{"text":":","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"mcrpg_stat_points"},"color":"yellow"},{"text":"\n"}]
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"+2%","color":"yellow"},{"text":" Base Melee Attack Damage","color":"green"}]}},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"+2%","color":"yellow"},{"text":" Base Melee Attack Damage","color":"green"}]}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"+2%","color":"yellow"},{"text":" Base Melee Attack Damage","color":"green"}]}},{"text":" Strength","color":"light_purple"},{"text":":","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"mcrpg_strength"},"color":"green"},{"text":" [","color":"gray"},{"score":{"name":".total_str_int","objective":"mcrpg"},"color":"green"},{"text": ".", "color":"green"},{"score":{"name":".total_str_float","objective":"mcrpg"},"color":"green"},{"text":" Total Attack Dmg","color":"green"},{"text":"]\n","color":"gray"}]
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"+1","color":"yellow"},{"text":" Max Health","color":"red"}]}},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"+1","color":"yellow"},{"text":" Max Health","color":"red"}]}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"+1","color":"yellow"},{"text":" Max Health","color":"red"}]}},{"text":" Health","color":"light_purple"},{"text":":","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"mcrpg_health"},"color":"red"},{"text":" [","color":"gray"},{"score":{"name":".health","objective":"mcrpg"},"color":"red"},{"text":"]","color":"gray"},{"text":"\n"}]
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"+50","color":"yellow"},{"text":" Max mana","color":"blue"}]}},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"+50","color":"yellow"},{"text":" Max mana","color":"blue"}]}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"+50","color":"yellow"},{"text":" Max mana","color":"blue"}]}},{"text":" Mana","color":"light_purple"},{"text":":","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"mcrpg_stat_mana"},"color":"blue"},{"text":" [","color":"gray"},{"score":{"name":"@s","objective":"mcrpg_maxMana"},"color":"blue"},{"text":"\u2741","color":"blue"},{"text":"]","color":"gray"},{"text":"\n"}]
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"+5","color":"yellow"},{"text":" Mana Regen","color":"blue"}]}},{"text":"+","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"+5","color":"yellow"},{"text":" Mana Regen","color":"blue"}]}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_btn set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"+5","color":"yellow"},{"text":" Mana Regen","color":"blue"}]}},{"text":" "},{"text":"Mana Regen","color":"light_purple","hoverEvent":{"action":"show_text","contents":"Note: Mana regen value is added to mana every 1.5s (30ticks)"}},{"text":":","color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"mcrpg_stat_manaRegen"},"color":"aqua"},{"text":" [","color":"gray"},{"score":{"name":"@s","objective":"mcrpg_manaRegen"},"color":"aqua"},{"text":"\u2741","color":"aqua"},{"text":" /","color":"gray"},{"text":"1.5","color":"green"},{"text":"s","color":"red"},{"text":"]","color":"gray"},{"text":"\n"}]

execute if entity @s[tag=mcrpg_no_atr_stats] run function mcrpg:level/text/stat_menu/enable_atr
execute unless entity @s[tag=mcrpg_no_atr_stats] run function mcrpg:level/text/stat_menu/disable_atr

tellraw @s {"text": "\nReload","color": "green", "clickEvent":{"action":"run_command","value":"/trigger mcrpg_stat_menu"}}

tellraw @s {"text":"---------------------","color":"light_purple"}