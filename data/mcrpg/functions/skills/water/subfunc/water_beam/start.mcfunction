summon area_effect_cloud ~ ~ ~ {Tags:["bounce"]}
tp @e[type=area_effect_cloud,tag=bounce] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=bounce] run function mcrpg:skills/water/subfunc/water_beam/tick
kill @e[type=area_effect_cloud,tag=bounce]