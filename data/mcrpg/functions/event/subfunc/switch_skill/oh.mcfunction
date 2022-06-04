data modify storage minecraft:mcrpg skills set from entity @s Inventory[{Slot: -106b}].tag.mcrpg.skills
execute store result score .skill_index mcrpg run data get entity @s Inventory[{Slot: -106b}].tag.mcrpg.skillIndex
