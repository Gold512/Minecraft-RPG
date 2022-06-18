execute store result score .success mcrpg run execute if predicate mcrpg:is_invulnerable 
execute if score .success mcrpg matches 0 run function mcrpg:damage/internal/dmg_mob
execute if score .success mcrpg matches 1 run scoreboard players set @s mcrpg_dmg 0 