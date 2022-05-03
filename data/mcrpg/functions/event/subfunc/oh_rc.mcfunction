# offhand rightclick
data modify storage mcrpg attack set from entity @s Inventory[{Slot: -106b}].tag.mcrpg
execute store success score .socketable mcrpg run data get entity @s Inventory[{Slot: -106b}].tag.socketable
execute if score .socketable mcrpg matches 1 run function mcrpg:event/subfunc/socketable_data
execute store result score @s mcrpg run data get entity @s Inventory[{Slot: -106b}].tag.mcrpg_atkId

# store skill id 
data modify storage mcrpg skills set from entity @s Inventory[{Slot: -106b}].tag.skills
execute if data storage mcrpg {attack:"socketable"} run function mcrpg:event/subfunc/set_skill_id