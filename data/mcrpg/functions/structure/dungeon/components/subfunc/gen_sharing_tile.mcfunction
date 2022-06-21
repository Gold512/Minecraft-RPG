tellraw @a [{"text":"[","color":"gray"},{"text": "WARNING","color":"yellow"},{"text":"] ","color":"gray"},{"text":"","color": "yellow","extra":[{"text":"More then one generator detected in same tile (at "}, {"entity":"@s","nbt":"Pos"}, {"text":")"}]}]
scoreboard players remove .count mcrpg 1 
tellraw @a [{"text":"[","color":"gray"},{"text": "ACTION","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Auto-resolved: removed "},{"score":{"name": ".count","objective": "mcrpg"}},{"text":" generator(s)","color": "light_purple"}]

# remove other generators 
tag @s add this
execute as @e[type=marker,tag=dungeon_gen,distance=..1] unless entity @s[tag=this] run kill @s
tag @s remove this 

# now that it is the only generator generate the room normally 
execute at @s run function mcrpg:structure/dungeon/components/subfunc/set_direction