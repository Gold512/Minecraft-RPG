data modify entity @s Item.tag.skills append from entity @e[type=item,limit=1,tag=ingredient] Item.tag.skill
execute store result score .skills mcrpg run data get entity @s Item.tag.skills
data modify entity @s CustomNameVisible set value 1b
data modify entity @s CustomName set value '["Skill successfully socketed"]'
# data modify entity @s CustomName set value '["", {"text": "Added skill "}, {"text": "[","color":"gray"}, {"entity":"@e[type=item,limit=1,tag=ingredient]","nbt":"Item.tag.skill.displayName", "color":"aqua"}, {"text": "] (","color":"gray"}, {"score":{"name":".skills","objective":"mcrpg"}, "color":"aqua"}, {"text": "/","color":"gray"}, {"entity":"@s", "nbt":"Item.tag.mcrpg_atkCount", "color":"aqua"}, {"text": ")", "color":"gray"}]'
kill @e[type=item,limit=1,tag=ingredient]
playsound block.anvil.use block @a ~ ~ ~
particle enchant ~ ~ ~ .2 0 .2 .2 64 normal @a