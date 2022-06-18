data modify entity @s Item set value {id:"stick",Count:1b,tag:{CustomModelData:1}}

data modify entity @s Item.tag.entrance set from entity @e[type=item_frame,tag=this,limit=1,sort=nearest] Item.tag.entrance 
data modify entity @s Item.tag.center set from entity @e[type=item_frame,tag=this,limit=1,sort=nearest] Item.tag.center 