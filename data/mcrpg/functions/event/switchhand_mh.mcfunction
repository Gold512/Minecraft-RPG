summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["mcrpg_item_cont"]}

# after switching hand the item will be in the player's offhand 
item replace entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont] weapon.mainhand from entity @s weapon.offhand

execute store result score .offhand mcrpg run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont] HandItems[0].tag.hasSwitchEvent 1

execute if score .offhand mcrpg matches 1 run data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont] HandItems[0].tag.hasSwitchEvent set value 2
execute if score .offhand mcrpg matches 2 run data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont] HandItems[0].tag.hasSwitchEvent set value 1
item replace entity @s weapon.offhand from entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont] weapon.mainhand
kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont]