kill @s
execute positioned ~ ~.8443 ~ run kill @e[type=item,limit=1,distance=...7,nbt={Item:{id:"minecraft:lodestone"}}]
particle minecraft:enchant ~ ~.5 ~ 0 0 0 .5 100 normal @a[tag=!mcrpg_ldm]
execute positioned ~ ~1 ~ run function mcrpg:craft/summon/magic_altar