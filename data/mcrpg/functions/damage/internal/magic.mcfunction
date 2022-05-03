scoreboard players operation @s mcrpg_magic_dmg *= .casting_dmg mcrpg
scoreboard players operation @s mcrpg_magic_dmg /= #100 mcrpg_const
scoreboard players operation @s mcrpg_dmg += @s mcrpg_magic_dmg
scoreboard players reset @s mcrpg_magic_dmg