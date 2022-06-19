# set scoreboards

execute store result score .base_time mcrpg run data get storage mcrpg skill.ctFunction.ctBase
execute store result score .final_time mcrpg run data get storage mcrpg skill.ctFunction.ctFinal
execute store result score .final_casting mcrpg run data get storage mcrpg skill.ctFunction.castingBase
execute store result score .base_casting mcrpg run data get storage mcrpg skill.ctFunction.castingFinal

function mcrpg:item/calc/cast_time

execute store result storage mcrpg skill.ct int 1 run scoreboard players get .out mcrpg 