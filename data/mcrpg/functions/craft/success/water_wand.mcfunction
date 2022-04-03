kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:prismarine_shard", Count:12b}}] 
kill @e[limit=1,sort=nearest,type=item,distance=...5,nbt={Item:{id:"minecraft:packed_ice", Count:16b}}]
kill @s
particle minecraft:dust_color_transition 0 0 1 3 0.27450980392 0.70588235294 0.94117647058 ~ ~.3 ~ .3 .3 .3 0 32 force

function mcrpg:craft/summon/wand/water_wand