summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["mcrpg_item_cont"]}

item replace entity @e[type=armor_stand,limit=1,tag=mcrpg_item_cont] weapon.mainhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[type=armor_stand,limit=1,tag=mcrpg_item_cont] weapon.mainhand

kill @e[type=armor_stand,limit=1,tag=mcrpg_item_cont]