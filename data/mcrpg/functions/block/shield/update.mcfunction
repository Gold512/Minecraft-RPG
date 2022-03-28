function mcrpg:block/shield/update_text/l4/l4_0

kill @e[type=item,limit=1, distance=...8, sort=nearest, nbt={Item:{id:"minecraft:brown_stained_glass"}}]
execute if entity @s[scores={mcrpg_shield_hp=1..}] run setblock ~ ~ ~ brown_stained_glass

execute if entity @s[scores={mcrpg_shield_hp=..0}] run setblock ~ ~ ~ air
execute if entity @s[scores={mcrpg_shield_hp=..0}] run kill @s