# main skill file 

scoreboard players operation .class mcrpg = .skill_id mcrpg
scoreboard players operation .type mcrpg = .skill_id mcrpg
scoreboard players operation .attack mcrpg = .skill_id mcrpg

# 1 digit type 
#   - 1 for magic 2 for melee
# 2 digit element/weapon(for melee) 
# 3 digit attack


# get type digit (6th digit from right) 
scoreboard players operation .class mcrpg /= #100000 mcrpg_const

# get 4th-5th digits 

# get 4-6th digit 
scoreboard players operation .type mcrpg /= #1000 mcrpg 
# remove 6th digit 
scoreboard players operation .type mcrpg %= #100 mcrpg_const

# get 1st to 3rd digits
scoreboard players operation .attack mcrpg %= #1000 mcrpg_const

execute if score .class mcrpg matches 1 run function mcrpg:item/skill/magic
execute if score .class mcrpg matches 2 run function mcrpg:item/skill/melee