execute store result entity @s Health float 0.01 run scoreboard players get @s mcrpg
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b},{Id:10b,Amplifier:5b,Duration:1,ShowParticles:0b}]}


execute if entity @a[tag=caster] run data modify entity @s AngryAt set from entity @a[tag=caster,sort=nearest,limit=1] UUID