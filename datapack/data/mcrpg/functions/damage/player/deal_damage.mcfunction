execute store result score @s cw_hp_old run attribute @s minecraft:generic.max_health base get
scoreboard players operation #temp cw_hp_old = @s cw_hp_current
scoreboard players operation #temp cw_hp_old -= @s mcrpg_dmg

function mcrpg:damage/player/set_hp

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b},{Id:10b,Amplifier:5b,Duration:1,ShowParticles:0b}]}