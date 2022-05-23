# copy item to armor stand to allow easy writing of nbt data 

summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["item_holder"]}
item replace entity @e[type=armor_stand,tag=item_holder,limit=1] weapon.mainhand from entity @s weapon.offhand