function mcrpg:level/get_xp/score
scoreboard players operation @s mcrpg_xp += .xp_gain mcrpg

execute if score .xp_gain mcrpg matches 1.. run playsound block.note_block.bit ambient @s ~ ~ ~ 5
# execute unless score @s mcrpg_xp >= @s mcrpg_xp_req run 

execute if score .xp_gain mcrpg matches 1.. run tellraw @s ["",{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"mcrpg_xp"},"color":"gold"},{"text":"/","color":"white"},{"score":{"name":"@s","objective":"mcrpg_xp_req"},"color":"yellow"},{"text":"XP","color":"yellow"},{"text":"]","color":"gray"},{"text":" +","color":"green"},{"score":{"name":".xp_gain","objective":"mcrpg"},"color":"yellow"},{"text":"xp","color":"yellow"},{"text":" Killed "}, {"score":{"name":"@s","objective":"mcrpg_mobkills"}, "color":"aqua"},{"text":" Mob(s)"}]

scoreboard players reset @s mcrpg_mobkills
execute if score @s mcrpg_xp >= @s mcrpg_xp_req run function mcrpg:level/level_up
