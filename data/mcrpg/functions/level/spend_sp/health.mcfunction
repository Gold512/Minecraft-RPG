scoreboard players remove @s mcrpg_stat_points 1
scoreboard players add @s mcrpg_health 1

execute unless entity @s[tag=mcrpg_no_atr_stats] run function mcrpg:level/calc_stats/set_health
function mcrpg:other/click_sound
