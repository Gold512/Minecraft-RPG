function mcrpg:craft/summon/wand/air_wand
particle cloud ~ ~.3 ~ .2 .2 .2 .5 100

# stick, phantom_membrane x4, feather x16
kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:phantom_membrane", Count:4b}}]
kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:feather", Count:16b}}]
kill @s

playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1