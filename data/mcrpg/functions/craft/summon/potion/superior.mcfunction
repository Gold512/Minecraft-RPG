summon item ~ ~ ~ {Item:{id:"potion",Count:1,tag:{Potion:"water",mcrpg:{name:"superior_mana_potion", rarity: 2500, displayName:'"Superior Mana Potion"',lore: ['{"text":"Instant Mana V","color":"blue","italic":false}','{"text":"+10000 Mana","color":"gray","italic":false}']},Enchantments:[{}],HideFlags: 32}}, Tags:["generated_item"]}
execute as @e[type=item,tag=generated_item] at @s run function mcrpg:general/generate_lore