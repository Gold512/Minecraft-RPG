# - Input - 
# <entity> @s - the item to add lore to 

data modify storage minecraft:mcrpg item set from entity @s Item
function mcrpg:item/lore/main
data modify entity @s Item set from storage minecraft:mcrpg item 

tag @s remove generated_item