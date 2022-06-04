# array of text components to display

data modify storage minecraft:mcrpg item.tag.display.Lore append value '[{"text":"","italic":false},{"text":"skills","color":"aqua"},{"text":":","color":"gray"}]'

execute store result score .count mcrpg run data get storage minecraft:mcrpg item.tag.mcrpg.skills
data modify storage minecraft:mcrpg skills set from storage minecraft:mcrpg item.tag.mcrpg.skills

summon armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable: 1b, NoGravity: 1b, Tags:["text_resolver"]}
item replace entity @e[type=armor_stand,tag=text_resolver] weapon.mainhand with stick
function mcrpg:item/lore/subfunc/set_skills/main

data modify storage minecraft:mcrpg item.tag.display.Lore append from entity @e[type=armor_stand,limit=1,tag=text_resolver] HandItems[0].tag.display.Lore[]
kill @e[type=armor_stand,limit=1,tag=text_resolver]