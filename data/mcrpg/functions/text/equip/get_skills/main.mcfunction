execute if score .has_mh_nbt mcrpg matches 1 run data modify storage mcrpg skillNature set from entity @s SelectedItem.tag.mcrpg.skillNature
execute if score .has_oh_nbt mcrpg matches 1 run data modify storage mcrpg skillNature set from entity @s Inventory[{Slot: -106b}].tag.mcrpg.skillNature

execute store result score .type mcrpg run data get storage mcrpg skillNature.type.id
execute store result score .element mcrpg run data get storage mcrpg skillNature.element.id
execute store result score .category mcrpg run data get storage mcrpg skillNature.category

# tellraw @s ["type ", {"score":{"name":".type", "objective": "mcrpg"}}]
# tellraw @s ["element ", {"score":{"name":".element", "objective": "mcrpg"}}]
# tellraw @s ["category ", {"score":{"name":".category", "objective": "mcrpg"}}]

execute if score .type mcrpg matches 1 run function mcrpg:text/equip/get_skills/magic