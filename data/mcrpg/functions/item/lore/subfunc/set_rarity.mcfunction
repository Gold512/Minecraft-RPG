data modify storage minecraft:mcrpg temp.value set from storage minecraft:mcrpg item.tag.mcrpg.rarity
execute store result score .rarity mcrpg run data get storage minecraft:mcrpg temp.value

summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["text_resolver"]}
item replace entity @e[type=armor_stand,tag=text_resolver] weapon.mainhand with stick

execute if score .rarity mcrpg matches 0..50 run data modify storage minecraft:mcrpg temp.name set value '{"text":"COMMON","color":"white","bold":true}'
execute if score .rarity mcrpg matches 51..150 run data modify storage minecraft:mcrpg temp.name set value '{"text":"UNCOMMON","color":"dark_green","bold":true}'
execute if score .rarity mcrpg matches 151..300 run data modify storage minecraft:mcrpg temp.name set value '{"text":"RARE","color":"blue","bold":true}'
execute if score .rarity mcrpg matches 301..750 run data modify storage minecraft:mcrpg temp.name set value '{"text":"VERY RARE","color":"purple","bold":true}'
execute if score .rarity mcrpg matches 751..1500 run data modify storage minecraft:mcrpg temp.name set value '{"text":"EPIC","color":"gold","bold":true}'
execute if score .rarity mcrpg matches 1501..2500 run data modify storage minecraft:mcrpg temp.name set value '{"text":"LEGENDARY","color":"dark_red","bold":true}'
execute if score .rarity mcrpg matches 2501..5000 run data modify storage minecraft:mcrpg temp.name set value '{"text":"MYTHIC","color":"light_purple","bold":true}'
execute if score .rarity mcrpg matches 5001.. run data modify storage minecraft:mcrpg temp.name set value '{"text":"GODLY","color":"yellow","bold":true}'

item modify entity @e[type=armor_stand,tag=text_resolver] weapon.mainhand mcrpg:lore/rarity
data modify storage minecraft:mcrpg item.tag.display.Lore append from entity @e[type=armor_stand,limit=1,tag=text_resolver] HandItems[0].tag.display.Lore[]
kill @e[type=armor_stand,tag=text_resolver]