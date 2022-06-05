scoreboard players set @s mcrpg_stat_points 0
scoreboard players set @s mcrpg_wisdom 0
scoreboard players set @s mcrpg_casting 0
scoreboard players set @s mcrpg_health 0
scoreboard players set @s mcrpg_strength 0
scoreboard players set @s mcrpg_level 0
scoreboard players set @s mcrpg_xp 0

scoreboard players set @s mcrpg_xp_req 20 
scoreboard players set @s mcrpg_staminaRegen 5 
scoreboard players set @s mcrpg_stamina 100
function mcrpg:level/calc_stats

# update player health
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b},{Id:10b,Amplifier:5b,Duration:1,ShowParticles:0b}]}