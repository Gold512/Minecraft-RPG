scoreboard players operation @s mcrpg_mana += @s mcrpg_manaRegen
execute if score @s mcrpg_mana > @s mcrpg_maxMana run scoreboard players operation @s mcrpg_mana = @s mcrpg_maxMana
scoreboard players set @a mcrpg_manaTimer 0