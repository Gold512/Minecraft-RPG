data modify entity @s Item set value {id:"stick",Count:1b,tag:{CustomModelData:1}}
data modify entity @s Item.tag.entrance set from storage mcrpg temp.entrance
data modify entity @s Item.tag.trigger set from storage mcrpg temp.trigger
data modify entity @s Item.tag.center set from storage mcrpg temp.center

kill @e[type=marker,tag=coord,limit=1]