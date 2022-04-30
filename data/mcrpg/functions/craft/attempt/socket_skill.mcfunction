tag @e[type=item,limit=1,sort=nearest,distance=...5,nbt={Item:{id:"minecraft:enchanted_book", Count: 1b, tag: {mcrpg: "skill_book"}}}] add ingredient

execute if entity @e[type=item,limit=1,tag=ingredient] run function mcrpg:craft/attempt/subfunc/check_max_skills