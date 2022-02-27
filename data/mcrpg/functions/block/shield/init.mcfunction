summon item_frame ~ ~ ~ {Tags:["mcrpg_anchor"], Facing:1b}
execute unless entity @s[tag=mcrpg_custom_hp] run scoreboard players set @s mcrpg_shield_hp 3
execute if entity @s[tag=mcrpg_custom_hp] run scoreboard players operation @s mcrpg_shield_hp = .shield_hp mcrpg
tp @s @e[type=item_frame,tag=mcrpg_anchor,limit=1,sort=nearest]
kill @e[type=item_frame,tag=mcrpg_anchor,limit=1,sort=nearest]
setblock ~ ~ ~ brown_stained_glass
tag @s remove mcrpg_init