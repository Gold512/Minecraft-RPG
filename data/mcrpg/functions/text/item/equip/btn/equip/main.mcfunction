# scoreboard players remove @s mcrpg_btn 40 
# scoreboard players operation .index mcrpg = @s mcrpg_btn
# scoreboard players operation .index mcrpg %= #100 mcrpg_const
# 
# # update skills array 
# data modify storage mcrpg skills set value []
# function mcrpg:text/item/equip/get_skills/main
# 
# data modify storage minecraft:mcrpg in set from storage mcrpg skills 
# 
# function mcrpg:general/get_array
# 
# data modify storage mcrpg skill set from storage mcrpg out

# calculate cast time if needed 
execute if data storage mcrpg skill.ctFunction run function mcrpg:text/item/equip/btn/equip/cast_time

# add the skill to item skills array 

# get current hand with item 
scoreboard players set .has_mh_nbt mcrpg 0
scoreboard players set .has_oh_nbt mcrpg 0

execute if data entity @s SelectedItem.tag.mcrpg run scoreboard players set .has_mh_nbt mcrpg 1
execute unless score .has_mh_nbt mcrpg matches 1 if data entity @s Inventory[{Slot: -106b}].tag.mcrpg run scoreboard players set .has_oh_nbt mcrpg 1

execute if score .has_mh_nbt mcrpg matches 1 run function mcrpg:text/item/equip/btn/equip/mainhand
execute if score .has_oh_nbt mcrpg matches 1 run function mcrpg:text/item/equip/btn/equip/offhand