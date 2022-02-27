summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["mcrpg_item_cont"]}
item replace entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont] weapon.mainhand from entity @s weapon.mainhand
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=mcrpg_item_cont] HandItems[0].tag.mcrpg_atkId byte 1 run scoreboard players get @s mcrpg
