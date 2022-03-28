# 20 * level + 50 * stat + 100 mana
scoreboard players set .basemana mcrpg 100
scoreboard players operation .mana mcrpg = @s mcrpg_level
scoreboard players operation .mana mcrpg *= #20 mcrpg_const
scoreboard players operation .mana mcrpg += .basemana mcrpg

scoreboard players operation .statboost mcrpg = @s mcrpg_wisdom
scoreboard players operation .statboost mcrpg *= #50 mcrpg_const
scoreboard players operation .mana mcrpg += .statboost mcrpg

scoreboard players operation @s mcrpg_maxMana = .mana mcrpg

# 3 * level + 5 * stat + 50 mana regen
scoreboard players set .basemana_reg mcrpg 50
scoreboard players operation .mana_reg mcrpg = @s mcrpg_level
scoreboard players operation .mana_reg mcrpg *= #3 mcrpg_const
scoreboard players operation .mana_reg mcrpg += .basemana_reg mcrpg

scoreboard players operation .statboost mcrpg = @s mcrpg_wisdom 
scoreboard players operation .statboost mcrpg *= #5 mcrpg_const
scoreboard players operation .mana_reg mcrpg += .statboost mcrpg

scoreboard players operation @s mcrpg_manaRegen = .mana_reg mcrpg