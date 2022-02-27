scoreboard players operation .cost mcrpg = @s mcrpg_maxMana
scoreboard players operation .cost mcrpg /= #10 mcrpg_const
execute if score @s mcrpg_mana >= .cost mcrpg run function mcrpg:skills/wind/dash