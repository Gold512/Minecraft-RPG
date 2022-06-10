summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["text_resolver"]}
item replace entity @e[type=armor_stand,tag=text_resolver] weapon.mainhand with stick

execute store result score .element mcrpg run data get storage minecraft:mcrpg item.tag.mcrpg.skillNature.element.id 

execute if score .element mcrpg matches 1 run data modify storage mcrpg temp.element set value '{"text":"f","font":"mcrpg:elements"}'
execute if score .element mcrpg matches 2 run data modify storage mcrpg temp.element set value '{"text":"w","font":"mcrpg:elements"}'
execute if score .element mcrpg matches 3 run data modify storage mcrpg temp.element set value '{"text":"a","font":"mcrpg:elements"}'
execute if score .element mcrpg matches 4 run data modify storage mcrpg temp.element set value '{"text":"e","font":"mcrpg:elements"}'
execute if score .element mcrpg matches 5 run data modify storage mcrpg temp.element set value '{"text":"l","font":"mcrpg:elements"}'
execute if score .element mcrpg matches 6 run data modify storage mcrpg temp.element set value '{"text":"d","font":"mcrpg:elements"}'
execute if score .element mcrpg matches 7 run data modify storage mcrpg temp.element set value '{"text":"E","font":"mcrpg:elements"}'

execute store result score .rarity mcrpg run data get storage minecraft:mcrpg item.tag.mcrpg.rarity

execute if score .rarity mcrpg matches 0..50 run data modify storage minecraft:mcrpg temp.color set value '{"color":"white","text":""}'
execute if score .rarity mcrpg matches 51..150 run data modify storage minecraft:mcrpg temp.color set value '{"color":"dark_green","text":""}'
execute if score .rarity mcrpg matches 151..300 run data modify storage minecraft:mcrpg temp.color set value '{"color":"blue","text":""}'
execute if score .rarity mcrpg matches 301..750 run data modify storage minecraft:mcrpg temp.color set value '{"color":"dark_purple","text":""}'
execute if score .rarity mcrpg matches 751..1500 run data modify storage minecraft:mcrpg temp.color set value '{"color":"gold","text":""}'
execute if score .rarity mcrpg matches 1501..2500 run data modify storage minecraft:mcrpg temp.color set value '{"color":"dark_red","text":""}'
execute if score .rarity mcrpg matches 2501..5000 run data modify storage minecraft:mcrpg temp.color set value '{"color":"light_purple","text":""}'
execute if score .rarity mcrpg matches 5001.. run data modify storage minecraft:mcrpg temp.color set value '{"color":"yellow","text":""}'

item modify entity @e[type=armor_stand,tag=text_resolver] weapon.mainhand mcrpg:lore/name

data modify storage minecraft:mcrpg item.tag.display.Name set from entity @e[type=armor_stand,tag=text_resolver,limit=1] HandItems[0].tag.display.Name
kill @e[type=armor_stand,tag=text_resolver]