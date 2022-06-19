# input
# <scoreboard> .base_time mcrpg 
# <scoreboard> .final_time mcrpg 
# <scoreboard> .final_casting mcrpg 
# <scoreboard> .base_casting mcrpg 

# output
# <scoreboard> .out mcrpg 

# .base_time - (.base_time - .final_time) / (.final_casting - .base_casting) * min(.current_casting - .base_casting, .final_casting - .base_casting)

# Statement is: .base_time - (.base_time - .final_time) / (.final_casting - .base_casting)
# Compiled as : .base_time - (.base_time - .final_time) / (.final_casting - .base_casting)
scoreboard players set #precision mcrpg 1000

scoreboard players operation .final_casting mcrpg *= #precision mcrpg
scoreboard players operation #op6 mcrpg = .final_casting mcrpg
scoreboard players operation .final_casting mcrpg /= #precision mcrpg
scoreboard players operation .base_casting mcrpg *= #precision mcrpg
scoreboard players operation #op6 mcrpg -= .base_casting mcrpg
scoreboard players operation .base_casting mcrpg /= #precision mcrpg
scoreboard players operation .base_time mcrpg *= #precision mcrpg
scoreboard players operation #op3 mcrpg = .base_time mcrpg
scoreboard players operation .base_time mcrpg /= #precision mcrpg
scoreboard players operation .final_time mcrpg *= #precision mcrpg
scoreboard players operation #op3 mcrpg -= .final_time mcrpg
scoreboard players operation .final_time mcrpg /= #precision mcrpg
execute store result score #op2 mcrpg run scoreboard players operation #op3 mcrpg /= #op6 mcrpg
scoreboard players operation .base_time mcrpg *= #precision mcrpg

scoreboard players operation #op0 mcrpg = .base_time mcrpg
scoreboard players operation .base_time mcrpg /= #precision mcrpg
scoreboard players operation #op0 mcrpg -= #op2 mcrpg

scoreboard players operation .out mcrpg = #op0 mcrpg

# Statement is: .current_casting - .base_casting 
# Compiled as : .current_casting - .base_casting 
scoreboard objectives add mcrpg dummy

scoreboard players operation .current_casting mcrpg *= #precision mcrpg
scoreboard players operation #op0 mcrpg = .current_casting mcrpg
scoreboard players operation .current_casting mcrpg /= #precision mcrpg
scoreboard players operation .base_casting mcrpg *= #precision mcrpg
scoreboard players operation #op0 mcrpg -= .base_casting mcrpg
scoreboard players operation .base_casting mcrpg /= #precision mcrpg

scoreboard players operation .v1 mcrpg = #op0 mcrpg

# Statement is: .final_casting - .base_casting
# Compiled as : .final_casting - .base_casting
scoreboard objectives add mcrpg dummy

scoreboard players operation .final_casting mcrpg *= #precision mcrpg
scoreboard players operation #op0 mcrpg = .final_casting mcrpg
scoreboard players operation .final_casting mcrpg /= #precision mcrpg
scoreboard players operation .base_casting mcrpg *= #precision mcrpg
scoreboard players operation #op0 mcrpg -= .base_casting mcrpg
scoreboard players operation .base_casting mcrpg /= #precision mcrpg

scoreboard players operation .v2 mcrpg = #op0 mcrpg

# .v1 = min(.v1, .v2) 
execute if score .v1 mcrpg > .v2 mcrpg run scoreboard players operation .v1 mcrpg = .v2 mcrpg 

# .out * .v1 
scoreboard players operation .out mcrpg *= .v1 mcrpg 

# round output to whole number 
scoreboard players operation .out mcrpg /= #precision mcrpg