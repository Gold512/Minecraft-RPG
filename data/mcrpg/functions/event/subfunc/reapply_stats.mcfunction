scoreboard players operation @s mcrpg_mana = @s mcrpg_maxMana
execute unless entity @s[tag=mcrpg_no_atr_stats] run function mcrpg:level/calc_stats
effect give @s instant_health 1 20 true 
scoreboard players reset @s mcrpg_deaths