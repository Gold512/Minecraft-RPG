kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:soul_sand", Count:32b}}] 
kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:soul_torch", Count:16b}}] 
kill @s
particle soul_fire_flame ~ ~ ~ .1 .1 .1 .2 128 force @a
playsound block.enchantment_table.use block @a ~ ~ ~ 1 1.2
function mcrpg:craft/summon/soulfire_wand