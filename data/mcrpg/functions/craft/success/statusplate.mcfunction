summon item ~ ~ ~ {Item:{}}

kill @e[limit=1,sort=nearest,type=item,distance=...3,nbt={Item:{id:"minecraft:ender_eye", Count:8b}}]
kill @e[limit=1,sort=nearest,type=item,distance=...3,nbt={Item:{id:"minecraft:magma_cream", Count:16b}}]
kill @s

playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1