# casting_dmg will be a % of damage ie 105 = 105% dmg 
scoreboard players operation .casting_dmg mcrpg = @s mcrpg_casting
scoreboard players operation .casting_dmg mcrpg *= #2 mcrpg_const
scoreboard players add .casting_dmg mcrpg 100 