scoreboard players operation .value mcrpg = @s mcrpg_btn
scoreboard players remove .value mcrpg 20000 

# element 
scoreboard players operation .element mcrpg = .value mcrpg 
scoreboard players operation .element mcrpg /= #100 mcrpg_const

scoreboard players operation .index mcrpg = .value mcrpg 
scoreboard players operation .index mcrpg %= #100 mcrpg_const 

scoreboard players operation .category mcrpg = .index mcrpg 
scoreboard players remove .category mcrpg 1
scoreboard players operation .category mcrpg /= #30 mcrpg_const
scoreboard players add .category mcrpg 1

data modify storage mcrpg in set value []


execute if score .element mcrpg matches 1 run function mcrpg:text/item/equip/menu/add_skill/magic/fire
execute if score .element mcrpg matches 2 run function mcrpg:text/item/equip/menu/add_skill/magic/water
execute if score .element mcrpg matches 3 run function mcrpg:text/item/equip/menu/add_skill/magic/air
execute if score .element mcrpg matches 4 run function mcrpg:text/item/equip/menu/add_skill/magic/earth
execute if score .element mcrpg matches 5 run function mcrpg:text/item/equip/menu/add_skill/magic/light
execute if score .element mcrpg matches 6 run function mcrpg:text/item/equip/menu/add_skill/magic/dark

# remove 1 from index because array index starts from 0
scoreboard players operation .index mcrpg %= #30 mcrpg_const
scoreboard players remove .index mcrpg 1
function mcrpg:general/get_array

data modify storage mcrpg skill set from storage mcrpg out 

# tellraw @a ["element: ", {"score":{"name": ".element","objective": "mcrpg"}}]
# tellraw @a ["index: ", {"score":{"name": ".index","objective": "mcrpg"}}]
# tellraw @a ["category: ", {"score":{"name": ".category","objective": "mcrpg"}}]
# tellraw @s {"storage":"mcrpg","nbt":"skill"}

function mcrpg:text/item/equip/btn/equip/main