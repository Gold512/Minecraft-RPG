execute store result score .a debug run data get entity @s Health

scoreboard players operation .c debug = .b debug
scoreboard players operation .c debug -= .a debug

execute if score .a debug < .b debug run tellraw @p ["",{"text":"DMG: "},{"score":{"name":".c","objective":"debug"}, "color":"red"}, ",", {"text": "HP: "}, {"score":{"name":".a","objective":"debug"}, "color":"green"}]
execute if score .a debug > .b debug run scoreboard players operation .c debug *= #-1 mcrpg_const
execute if score .a debug > .b debug run tellraw @p ["",{"text":"HEAL: "},{"score":{"name":".c","objective":"debug"}, "color":"red"}, ",", {"text": "HP: "}, {"score":{"name":".a","objective":"debug"}, "color":"green"}]
scoreboard players operation .b debug = .a debug