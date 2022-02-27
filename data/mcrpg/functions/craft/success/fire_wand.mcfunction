function mcrpg:craft/summon/wand/fire_wand
particle flame ~ ~.3 ~ .2 .2 .2 .5 100

kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:blaze_powder", Count:16b}}]
kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:fire_charge", Count:6b}}]
kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:magma_cream", Count:4b}}]
kill @s

playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1