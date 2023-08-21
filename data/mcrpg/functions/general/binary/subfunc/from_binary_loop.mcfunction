execute store result score .bin mcrpg run data get storage mcrpg binary[0]
data remove storage mcrpg binary[0]
execute if score .bin mcrpg matches 1 run scoreboard players operation .out mcrpg += .counter mcrpg 
scoreboard players operation .counter mcrpg *= #2 mcrpg_const
execute if data storage mcrpg binary[0] run function mcrpg:general/binary/subfunc/from_binary_loop