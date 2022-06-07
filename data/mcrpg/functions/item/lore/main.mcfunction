# item data should be in mcrpg.item
# data modify storage minecraft:mcrpg item set from entity @s SelectedItem
data modify storage minecraft:mcrpg temp set value {}

execute store success score .success mcrpg run data get storage minecraft:mcrpg item.tag.display
execute if score .success mcrpg matches 0 run data modify storage minecraft:mcrpg item.tag.display set value {}
data modify storage minecraft:mcrpg item.tag.display.Lore set value [] 

execute store success score .success mcrpg run data get storage minecraft:mcrpg item.tag.mcrpg.displayName
execute if score .success mcrpg matches 1 run function mcrpg:item/lore/subfunc/set_name

execute store success score .success mcrpg run data get storage minecraft:mcrpg item.tag.mcrpg.description
execute if score .success mcrpg matches 1 run function mcrpg:item/lore/subfunc/set_description

# check if has more then 1 skill 
execute store result score .success mcrpg run data get storage minecraft:mcrpg item.tag.mcrpg.skills
execute if score .success mcrpg matches 1.. run function mcrpg:item/lore/subfunc/set_skills

execute store success score .success mcrpg run data get storage minecraft:mcrpg item.tag.mcrpg.rarity
execute if score .success mcrpg matches 1 run function mcrpg:item/lore/subfunc/set_rarity

execute unless data storage mcrpg item.tag.mcrpg.event.currentHand run data modify storage minecraft:mcrpg item.tag.mcrpg.event.currentHand set value 1 

data remove storage minecraft:mcrpg temp