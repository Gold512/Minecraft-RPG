# -==## variables ##==-
# - input -
# <scoreboard> .skill_id mcrpg : a numerical id of the skill
# digit allocation (left to right) 
#     1 digit type 
#       - 1 for magic 2 for melee
#     2 digit element/weapon(for melee) 
#     1 digit tier 
#     2 digit attack

# -==## description ##==-
# calls the function specified in the skill id

scoreboard players operation .class mcrpg = .skill_id mcrpg
scoreboard players operation .type mcrpg = .skill_id mcrpg
scoreboard players operation .attack mcrpg = .skill_id mcrpg

# get type digit (6th digit from right) 
scoreboard players operation .class mcrpg /= #100000 mcrpg_const

# get 4th-5th digits 

# get 4-6th digit 
scoreboard players operation .type mcrpg /= #1000 mcrpg_const
# remove 6th digit 
scoreboard players operation .type mcrpg %= #100 mcrpg_const


# get 1st to 3rd digits
scoreboard players operation .attack mcrpg %= #1000 mcrpg_const
scoreboard players operation .tier mcrpg = .attack mcrpg

# get third digit from right 
scoreboard players operation .tier mcrpg /= #100 mcrpg_const

# remove third digit from right
scoreboard players operation .attack mcrpg %= #100 mcrpg_const

# tellraw @s ["---------------------\n.skill_id:", {"score":{"name":".skill_id","objective":"mcrpg"}},"\n.class:", {"score":{"name":".class","objective":"mcrpg"}},"\n.type:", {"score":{"name":".type","objective":"mcrpg"}},"\n.tier:", {"score":{"name":".tier","objective":"mcrpg"}},"\n.attack:", {"score":{"name":".attack","objective":"mcrpg"}},"---------------------"]

execute if score .class mcrpg matches 1 run function mcrpg:item/skill/magic
execute if score .class mcrpg matches 2 run function mcrpg:item/skill/melee