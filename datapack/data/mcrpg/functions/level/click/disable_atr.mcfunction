tag @s add mcrpg_no_atr_stats
attribute @s generic.max_health base set 20
attribute @s generic.attack_damage modifier remove d63797b4-14c6-4f33-86d0-fdee7d3165ed
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b},{Id:10b,Amplifier:5b,Duration:1,ShowParticles:0b}]}
function mcrpg:other/click_sound
trigger mcrpg_stat_menu