# xp_req = level * 2 + 20 
scoreboard players operation @s mcrpg_xp_req = @s mcrpg_level
scoreboard players operation @s mcrpg_xp_req *= #2 mcrpg_const
scoreboard players add @s mcrpg_xp_req 20