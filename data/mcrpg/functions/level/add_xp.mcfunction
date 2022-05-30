scoreboard players operation .xp mcrpg = @s mcrpg_mobkills
scoreboard players operation .xp mcrpg += .xp mcrpg
scoreboard players operation @s mcrpg_xp += .xp mcrpg

playsound block.note_block.bit ambient @s ~ ~ ~ 5
execute unless score @s mcrpg_xp >= @s mcrpg_xp_req run tellraw @s ["",{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"mcrpg_xp"},"color":"gold"},{"text":"/","color":"white"},{"score":{"name":"@s","objective":"mcrpg_xp_req"},"color":"yellow"},{"text":"XP","color":"yellow"},{"text":"]","color":"gray"},{"text":" +","color":"green"},{"score":{"name":".xp","objective":"mcrpg"},"color":"yellow"},{"text":"xp","color":"yellow"},{"text":" Killed "}, {"score":{"name":"@s","objective":"mcrpg_mobkills"}, "color":"aqua"},{"text":" Mob(s)"}]

scoreboard players reset @s mcrpg_mobkills
execute if score @s mcrpg_xp >= @s mcrpg_xp_req run function mcrpg:level/level_up
