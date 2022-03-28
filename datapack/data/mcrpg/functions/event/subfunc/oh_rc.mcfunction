# offhand rightclick
data modify storage mcrpg attack set from entity @s Inventory[{Slot: -106b}].tag.mcrpg
execute store result score @s mcrpg run data get entity @s Inventory[{Slot: -106b}].tag.mcrpg_atkId
