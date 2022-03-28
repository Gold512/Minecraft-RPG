scoreboard players set .total mcrpg 0
scoreboard players operation .total mcrpg = @s mcrpg_level
scoreboard players operation .total mcrpg *= #3 mcrpg_const

scoreboard players operation .total mcrpg -= @s mcrpg_wisdom
scoreboard players operation .total mcrpg -= @s mcrpg_intelligence 
scoreboard players operation .total mcrpg -= @s mcrpg_health
scoreboard players operation .total mcrpg -= @s mcrpg_strength

scoreboard players operation @s mcrpg_stat_points = .total mcrpg