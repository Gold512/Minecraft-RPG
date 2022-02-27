function mcrpg:craft/summon/materials/enhanted_rod

kill @s
kill @e[type=item,limit=1,nbt={Item:{id:"minecraft:fire_charge",Count:6b}}]
kill @e[type=item,limit=1,nbt={Item:{id:"minecraft:magma_cream",Count:3b}}]

particle flame ~ ~ ~ .2 .2 .2 0 32