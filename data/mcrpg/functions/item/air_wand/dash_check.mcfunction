scoreboard players operation .cost mcrpg = @s mcrpg_maxMana
scoreboard players operation .cost mcrpg /= #10 mcrpg_const
scoreboard players set @s mcrpg_cd 0
execute if score @s mcrpg_mana >= .cost mcrpg run function mcrpg:skills/wind/dash