execute store result score .temp2 mcrpg run scoreboard players operation .temp mcrpg = .value mcrpg 
scoreboard players operation .temp mcrpg /= #2 mcrpg_const 
scoreboard players operation .value mcrpg = .temp mcrpg

scoreboard players operation .temp mcrpg *= #2 mcrpg_const
scoreboard players operation .temp2 mcrpg -= .temp mcrpg 
execute store result storage mcrpg temp byte 1 run scoreboard players get .temp2 mcrpg 
data modify storage mcrpg out append from storage mcrpg temp 
execute if score .value mcrpg matches 1.. run function mcrpg:general/binary/subfunc/to_binary_loop