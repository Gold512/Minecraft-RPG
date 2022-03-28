# create storage container for items 
summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["mcrpg_item_cont"]}

# save mainhand item
item replace entity @e[type=minecraft:armor_stand,sort=nearest,tag=mcrpg_item_cont,limit=1] weapon.mainhand from entity @s weapon.mainhand

# replace mainhand with offhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand

# replace offhand with item from storage
item replace entity @s weapon.offhand from entity @e[type=minecraft:armor_stand,sort=nearest,tag=mcrpg_item_cont,limit=1] weapon.mainhand

kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont]