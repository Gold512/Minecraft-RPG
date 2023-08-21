# input
# .effect_id 

scoreboard players operation .id mcrpg = .effect_id mcrpg 
scoreboard players operation .id mcrpg %= #100 mcrpg_const 

scoreboard players operation .element mcrpg = .effect_id mcrpg
scoreboard players operation .element mcrpg %= #1000 mcrpg_const

scoreboard players operation .type mcrpg = .effect_id mcrpg
scoreboard players operation .type mcrpg -= .element mcrpg
scoreboard players operation .type mcrpg /= #1000 mcrpg_const

scoreboard players operation .element mcrpg /= #100 mcrpg_const

execute if entity @s[tag=no_cast_effect] run tag @s add hide_effect 

execute if score .type mcrpg matches 1 run function mcrpg:item/charge_effect/magic

tag @s remove hide_effect