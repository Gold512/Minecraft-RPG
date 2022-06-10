summon item ~ ~ ~ {Item:{id:"command_block",Count:1,tag:{CustomModelData: 101,mcrpg:{name:"bronze_coin",displayName:'"Bronze Coin"',rarity:150,event:{menu:{coin:true}},lore:['{"text":"Value: 1","color":"gray","italic":false}']},Enchantments:[{id:"protection",lvl:0}],HideFlags: 1}}, Tags:["generated_item"]}
execute if score .count mcrpg matches 1.. store result entity @e[type=item,tag=generated_item,limit=1] Item.Count byte 1 run scoreboard players get .count mcrpg 
scoreboard players reset .count mcrpg
execute as @e[type=item,tag=generated_item] at @s run function mcrpg:general/generate_lore